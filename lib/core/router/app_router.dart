import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/auth_service.dart';
import '../constants/app_constants.dart';
import '../../features/auth/presentation/login_page.dart';
import '../../features/auth/presentation/signup_page.dart';
import '../../features/user_intake/presentation/user_intake_page.dart';
import '../../features/home/presentation/landing_page.dart';
import '../../features/assessment/presentation/assessment_page.dart';

// DEMO MODE - Set to true to bypass authentication and explore the UI
const bool DEMO_MODE = true;

/// GoRouter configuration with role-based auth guards
final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: AppConstants.routeHome,
    redirect: (context, state) async {
      // DEMO MODE: Skip all auth checks
      if (AppConstants.demoMode) {
        return null; // Allow all routes
      }
      final isLoggedIn = authState.value != null;
      final isLoggingIn = state.matchedLocation == AppConstants.routeLogin ||
          state.matchedLocation == AppConstants.routeSignup;

      // If not logged in and not on login/signup, redirect to login
      if (!isLoggedIn && !isLoggingIn) {
        return AppConstants.routeLogin;
      }

      // If logged in and on login/signup, redirect based on role
      if (isLoggedIn && isLoggingIn) {
        final authService = ref.read(authServiceProvider);
        final userData = await authService.getCurrentUserData();

        if (userData == null) return AppConstants.routeLogin;

        switch (userData.role) {
          case AppConstants.roleUser:
            // Check if user has completed intake
            if (userData.selectedPrograms.isEmpty) {
              return AppConstants.routeUserIntake;
            }
            // Check if user has completed assessment
            if (userData.assessmentId == null) {
              return AppConstants.routeAssessment;
            }
            return AppConstants.routeUserDashboard;

          case AppConstants.rolePractitioner:
            return AppConstants.routePractitionerDashboard;

          case AppConstants.roleAdmin:
            return AppConstants.routeAdminDashboard;

          default:
            return AppConstants.routeLogin;
        }
      }

      return null; // No redirect needed
    },
    routes: [
      // Auth routes
      GoRoute(
        path: AppConstants.routeLogin,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppConstants.routeSignup,
        builder: (context, state) => const SignupPage(),
      ),

      // Home/Landing
      GoRoute(
        path: AppConstants.routeHome,
        builder: (context, state) => const LandingPage(),
      ),

      // User Intake
      GoRoute(
        path: AppConstants.routeUserIntake,
        builder: (context, state) => const UserIntakePage(),
      ),

      // Assessment
      GoRoute(
        path: AppConstants.routeAssessment,
        builder: (context, state) => const AssessmentPage(),
      ),

      // Search
      GoRoute(
        path: AppConstants.routeSearch,
        builder: (context, state) => const _SearchPage(),
      ),

      // Practitioner Profile
      GoRoute(
        path: AppConstants.routePractitionerProfile,
        builder: (context, state) {
          final id = state.pathParameters['id']!;
          return _PractitionerProfilePage(practitionerId: id);
        },
      ),

      // Booking
      GoRoute(
        path: AppConstants.routeBooking,
        builder: (context, state) {
          final practitionerId = state.pathParameters['practitionerId']!;
          return _BookingPage(practitionerId: practitionerId);
        },
      ),

      // Dashboards
      GoRoute(
        path: AppConstants.routeUserDashboard,
        builder: (context, state) => const _UserDashboardPage(),
      ),
      GoRoute(
        path: AppConstants.routePractitionerDashboard,
        builder: (context, state) => const _PractitionerDashboardPage(),
      ),
      GoRoute(
        path: AppConstants.routeAdminDashboard,
        builder: (context, state) => const _AdminDashboardPage(),
      ),

      // Audio Library
      GoRoute(
        path: AppConstants.routeAudioLibrary,
        builder: (context, state) => const _AudioLibraryPage(),
      ),
    ],
  );
});

// Placeholder pages (to be implemented)
class _HomePage extends StatelessWidget {
  const _HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('WellnessHub')),
      body: const Center(child: Text('Home Page - To be implemented')),
    );
  }
}

class _UserIntakePage extends StatelessWidget {
  const _UserIntakePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Intake')),
      body: const Center(child: Text('User Intake - To be implemented')),
    );
  }
}

class _AssessmentPage extends StatelessWidget {
  const _AssessmentPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assessment')),
      body: const Center(child: Text('Assessment - To be implemented')),
    );
  }
}

class _SearchPage extends StatelessWidget {
  const _SearchPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: const Center(child: Text('Search - To be implemented')),
    );
  }
}

class _PractitionerProfilePage extends StatelessWidget {
  final String practitionerId;

  const _PractitionerProfilePage({required this.practitionerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practitioner Profile')),
      body: Center(child: Text('Practitioner $practitionerId - To be implemented')),
    );
  }
}

class _BookingPage extends StatelessWidget {
  final String practitionerId;

  const _BookingPage({required this.practitionerId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Session')),
      body: Center(child: Text('Booking for $practitionerId - To be implemented')),
    );
  }
}

class _UserDashboardPage extends StatelessWidget {
  const _UserDashboardPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Dashboard')),
      body: const Center(child: Text('User Dashboard - To be implemented')),
    );
  }
}

class _PractitionerDashboardPage extends StatelessWidget {
  const _PractitionerDashboardPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Practitioner Dashboard')),
      body: const Center(child: Text('Practitioner Dashboard - To be implemented')),
    );
  }
}

class _AdminDashboardPage extends StatelessWidget {
  const _AdminDashboardPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: const Center(child: Text('Admin Dashboard - To be implemented')),
    );
  }
}

class _AudioLibraryPage extends StatelessWidget {
  const _AudioLibraryPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Audio Library')),
      body: const Center(child: Text('Audio Library - To be implemented')),
    );
  }
}
