import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/theme/wellness_theme.dart';

class AssessmentPage extends ConsumerStatefulWidget {
  const AssessmentPage({super.key});

  @override
  ConsumerState<AssessmentPage> createState() => _AssessmentPageState();
}

class _AssessmentPageState extends ConsumerState<AssessmentPage> {
  int _currentStep = 0;
  bool _isLoading = false;
  final TextEditingController _textInputController = TextEditingController();

  // Mock Questions
  final List<Map<String, dynamic>> _questions = [
    {
      'id': 'mood',
      'question': 'How have you been feeling lately?',
      'type': 'scale',
      'minLabel': 'Struggling',
      'maxLabel': 'Thriving',
    },
    {
      'id': 'sleep',
      'question': 'How is your sleep quality?',
      'type': 'choice',
      'options': ['Poor', 'Fair', 'Good', 'Excellent'],
    },
    {
      'id': 'stress',
      'question': 'What causes you the most stress right now?',
      'type': 'text',
      'hint': 'Work, relationships, health...',
    },
    {
      'id': 'goal',
      'question': 'What is your primary wellness goal?',
      'type': 'choice',
      'options': [
        'Reduce Anxiety',
        'Improve Sleep',
        'Better Relationships',
        'Career Growth',
        'Physical Health'
      ],
    },
  ];

  // Answers storage
  final Map<String, dynamic> _answers = {};

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: WellnessTheme.space16),
              Text('Generating your personalized insights...'),
            ],
          ),
        ),
      );
    }

    final question = _questions[_currentStep];
    final isLastStep = _currentStep == _questions.length - 1;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wellness Assessment'),
        leading: _currentStep > 0
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => setState(() => _currentStep--),
              )
            : null,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Progress Bar
            LinearProgressIndicator(
              value: (_currentStep + 1) / _questions.length,
              backgroundColor: WellnessTheme.surfaceVariant,
              valueColor: const AlwaysStoppedAnimation<Color>(WellnessTheme.primary),
            ),

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(WellnessTheme.space24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Question Number
                    Text(
                      'Question ${_currentStep + 1} of ${_questions.length}',
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: WellnessTheme.textSecondary,
                          ),
                    ),
                    const SizedBox(height: WellnessTheme.space16),

                    // Question Text
                    Text(
                      question['question'],
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: WellnessTheme.space32),

                    // Input Widget
                    _buildInputForType(question),
                  ],
                ),
              ),
            ),

            // Navigation
            Padding(
              padding: const EdgeInsets.all(WellnessTheme.space24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _canProceed(question)
                      ? () => _handleNext(isLastStep)
                      : null,
                  child: Text(isLastStep ? 'Complete Assessment' : 'Next'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputForType(Map<String, dynamic> question) {
    switch (question['type']) {
      case 'scale':
        double value = (_answers[question['id']] as double?) ?? 50.0;
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(question['minLabel']),
                Text(question['maxLabel']),
              ],
            ),
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 10,
              label: value.round().toString(),
              onChanged: (val) {
                setState(() => _answers[question['id']] = val);
              },
            ),
          ],
        );

      case 'choice':
        final options = question['options'] as List<String>;
        final selected = _answers[question['id']] as String?;
        return Column(
          children: options.map((option) {
            final isSelected = selected == option;
            return Padding(
              padding: const EdgeInsets.only(bottom: WellnessTheme.space12),
              child: InkWell(
                onTap: () => setState(() => _answers[question['id']] = option),
                borderRadius: BorderRadius.circular(WellnessTheme.radiusMedium),
                child: Container(
                  padding: const EdgeInsets.all(WellnessTheme.space16),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? WellnessTheme.primaryLight.withOpacity(0.2)
                        : WellnessTheme.surfaceVariant,
                    border: Border.all(
                      color: isSelected
                          ? WellnessTheme.primary
                          : Colors.transparent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(WellnessTheme.radiusMedium),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_unchecked,
                        color: isSelected
                            ? WellnessTheme.primary
                            : WellnessTheme.textSecondary,
                      ),
                      const SizedBox(width: WellnessTheme.space16),
                      Text(
                        option,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        );

      case 'text':
        // Ensure controller text matches stored answer if revisiting step
        if (_answers[question['id']] != null &&
            _textInputController.text != _answers[question['id']]) {
          _textInputController.text = _answers[question['id']];
        }
        return TextField(
          controller: _textInputController,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: question['hint'],
            alignLabelWithHint: true,
          ),
          onChanged: (val) {
            setState(() => _answers[question['id']] = val);
          },
        );

      default:
        return const Text('Unknown question type');
    }
  }

  bool _canProceed(Map<String, dynamic> question) {
    final answer = _answers[question['id']];
    if (answer == null) return false;
    if (answer is String && answer.isEmpty) return false;
    return true;
  }

  Future<void> _handleNext(bool isLastStep) async {
    if (isLastStep) {
      setState(() => _isLoading = true);

      // Simulate AI Processing
      await Future.delayed(const Duration(seconds: 2));

      if (mounted) {
        // Navigate to User Dashboard
        context.go(AppConstants.routeUserDashboard);
      }
    } else {
      // Clear text controller for next step if it's a text question
      final nextQuestion = _questions[_currentStep + 1];
      if (nextQuestion['type'] == 'text') {
        _textInputController.clear();
      }
      setState(() => _currentStep++);
    }
  }
}
