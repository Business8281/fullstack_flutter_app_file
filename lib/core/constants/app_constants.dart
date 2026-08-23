/// WellnessHub App Constants
library;

class AppConstants {
  AppConstants._();

  // ============ DEMO MODE ============
  static const bool demoMode = true;

  // ============ APP INFO ============
  static const String appName = 'WellnessHub';
  static const String appTagline = 'Your journey to wellness starts here';
  
  // ============ USER ROLES ============
  static const String roleUser = 'user';
  static const String rolePractitioner = 'practitioner';
  static const String roleAdmin = 'admin';
  
  // ============ WELLNESS PROGRAMS ============
  static const List<String> programs = [
    'Health',
    'Relationships',
    'Growth',
    'Best Version',
  ];
  
  // ============ SESSION TYPES ============
  static const String sessionTypeAudio = 'audio';
  static const String sessionTypeVideo = 'video';
  
  // ============ BOOKING STATUS ============
  static const String bookingPending = 'pending';
  static const String bookingConfirmed = 'confirmed';
  static const String bookingCompleted = 'completed';
  static const String bookingCancelled = 'cancelled';
  static const String bookingRefunded = 'refunded';
  
  // ============ PRACTITIONER STATUS ============
  static const String practitionerPending = 'pending';
  static const String practitionerApproved = 'approved';
  static const String practitionerRejected = 'rejected';
  static const String practitionerSuspended = 'suspended';
  
  // ============ SPECIALTIES ============
  static const List<String> specialties = [
    'Stress Management',
    'Anxiety Relief',
    'Depression Support',
    'Relationship Counseling',
    'Career Guidance',
    'Life Coaching',
    'Meditation',
    'Mindfulness',
    'Nutrition',
    'Fitness',
    'Sleep Improvement',
    'Addiction Recovery',
    'Grief Support',
    'Self-Esteem',
    'Personal Growth',
  ];
  
  // ============ LANGUAGES ============
  static const List<String> languages = [
    'English',
    'Hindi',
    'Spanish',
    'French',
    'German',
    'Mandarin',
    'Arabic',
  ];
  
  // ============ FIRESTORE COLLECTIONS ============
  static const String usersCollection = 'users';
  static const String practitionersCollection = 'practitioners';
  static const String assessmentsCollection = 'assessments';
  static const String bookingsCollection = 'bookings';
  static const String availabilityCollection = 'availability';
  static const String audioLibraryCollection = 'audio_library';
  static const String reviewsCollection = 'reviews';
  
  // ============ STORAGE PATHS ============
  static const String practitionerPhotosPath = 'practitioner_photos';
  static const String audioTracksPath = 'audio_tracks';
  
  // ============ VALIDATION ============
  static const int minAge = 18;
  static const int maxAge = 100;
  static const int minProblemDescriptionLength = 50;
  static const int maxProblemDescriptionLength = 1000;
  static const int minBioLength = 100;
  static const int maxBioLength = 500;
  
  // ============ PRICING ============
  static const double minSessionPrice = 10.0;
  static const double maxSessionPrice = 500.0;
  static const double platformFeePercentage = 0.15; // 15% platform fee
  
  // ============ SESSION TIMING ============
  static const int sessionDurationMinutes = 60;
  static const int joinSessionMinutesBefore = 10;
  
  // ============ PAGINATION ============
  static const int practitionersPerPage = 20;
  static const int bookingsPerPage = 10;
  
  // ============ AUDIO LIBRARY ============
  static const List<String> solfeggioFrequencies = [
    '174 Hz - Pain Relief',
    '285 Hz - Healing & Regeneration',
    '396 Hz - Liberation from Fear',
    '417 Hz - Facilitating Change',
    '528 Hz - Transformation & Miracles',
    '639 Hz - Relationships & Connection',
    '741 Hz - Awakening Intuition',
    '852 Hz - Spiritual Order',
    '963 Hz - Divine Consciousness',
  ];
  
  // ============ ERROR MESSAGES ============
  static const String errorGeneric = 'Something went wrong. Please try again.';
  static const String errorNetwork = 'Network error. Please check your connection.';
  static const String errorAuth = 'Authentication failed. Please login again.';
  static const String errorPermission = 'You do not have permission to perform this action.';
  static const String errorNotFound = 'Resource not found.';
  
  // ============ SUCCESS MESSAGES ============
  static const String successProfileUpdated = 'Profile updated successfully';
  static const String successBookingCreated = 'Booking confirmed! Check your email for details.';
  static const String successPaymentCompleted = 'Payment completed successfully';
  
  // ============ ROUTES ============
  static const String routeHome = '/';
  static const String routeLogin = '/login';
  static const String routeSignup = '/signup';
  static const String routeUserIntake = '/user-intake';
  static const String routeAssessment = '/assessment';
  static const String routeSearch = '/search';
  static const String routePractitionerProfile = '/practitioner/:id';
  static const String routeBooking = '/booking/:practitionerId';
  static const String routeUserDashboard = '/dashboard/user';
  static const String routePractitionerDashboard = '/dashboard/practitioner';
  static const String routeAdminDashboard = '/dashboard/admin';
  static const String routeAudioLibrary = '/audio-library';
}
