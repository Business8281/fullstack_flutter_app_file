const functions = require('firebase-functions');
const admin = require('firebase-admin');
const assessmentAI = require('./assessmentAI');
const bookingFunctions = require('./booking');
const stripeFunctions = require('./stripe');

// Export all functions
exports.processAssessment = assessmentAI.processAssessment;
exports.createBooking = bookingFunctions.createBooking;
exports.stripeWebhook = stripeFunctions.stripeWebhook;
