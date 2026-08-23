const functions = require('firebase-functions');
const admin = require('firebase-admin');
const { OpenAI } = require('openai');

admin.initializeApp();

const openai = new OpenAI({
    apiKey: functions.config().openai.key,
});

/**
 * AI Assessment Cloud Function
 * 
 * Receives user assessment answers and selected programs,
 * sends to OpenAI for analysis, returns structured insights.
 */
exports.processAssessment = functions.https.onCall(async (data, context) => {
    // Verify authentication
    if (!context.auth) {
        throw new functions.https.HttpsError(
            'unauthenticated',
            'User must be authenticated'
        );
    }

    const { assessmentId, answers, selectedPrograms } = data;

    if (!assessmentId || !answers || !selectedPrograms) {
        throw new functions.https.HttpsError(
            'invalid-argument',
            'Missing required fields'
        );
    }

    try {
        // Build prompt for AI
        const prompt = buildAssessmentPrompt(answers, selectedPrograms);

        // Call OpenAI
        const completion = await openai.chat.completions.create({
            model: 'gpt-4',
            messages: [
                {
                    role: 'system',
                    content: `You are a compassionate wellness advisor. Analyze user responses and provide insights WITHOUT giving medical diagnosis or advice. Focus on understanding their situation and recommending appropriate practitioner specialties.

Return ONLY valid JSON in this exact format:
{
  "user_tags": ["tag1", "tag2", "tag3"],
  "insight_summary": "A compassionate 2-3 sentence summary",
  "recommended_specialties": ["specialty1", "specialty2", "specialty3"]
}`,
                },
                {
                    role: 'user',
                    content: prompt,
                },
            ],
            temperature: 0.7,
            max_tokens: 500,
        });

        // Parse AI response
        const aiResponse = completion.choices[0].message.content;
        const parsedResponse = JSON.parse(aiResponse);

        // Validate response structure
        if (
            !parsedResponse.user_tags ||
            !parsedResponse.insight_summary ||
            !parsedResponse.recommended_specialties
        ) {
            throw new Error('Invalid AI response structure');
        }

        // Update assessment in Firestore
        await admin
            .firestore()
            .collection('assessments')
            .doc(assessmentId)
            .update({
                insightSummary: parsedResponse.insight_summary,
                userTags: parsedResponse.user_tags,
                recommendedSpecialties: parsedResponse.recommended_specialties,
                completedAt: admin.firestore.FieldValue.serverTimestamp(),
            });

        // Also update user document
        await admin
            .firestore()
            .collection('users')
            .doc(context.auth.uid)
            .update({
                tags: parsedResponse.user_tags,
                assessmentId: assessmentId,
                updatedAt: admin.firestore.FieldValue.serverTimestamp(),
            });

        return {
            success: true,
            data: parsedResponse,
        };
    } catch (error) {
        console.error('Assessment processing error:', error);
        throw new functions.https.HttpsError(
            'internal',
            'Failed to process assessment',
            error.message
        );
    }
});

/**
 * Build prompt from user answers
 */
function buildAssessmentPrompt(answers, selectedPrograms) {
    let prompt = `User is seeking help in these areas: ${selectedPrograms.join(', ')}\n\n`;
    prompt += 'Assessment Responses:\n';

    for (const [question, answer] of Object.entries(answers)) {
        prompt += `${question}: ${answer}\n`;
    }

    prompt += '\nBased on this information, provide insights and recommendations.';

    return prompt;
}
