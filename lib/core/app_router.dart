import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../features/home/presentation/home_screen.dart';
import '../features/home/presentation/animation_demo_page.dart';
import '../features/sample/presentation/professional_demo_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'animations',
            name: 'animations',
            builder: (context, state) => const AnimationDemoPage(),
          ),
          GoRoute(
            path: 'professional',
            name: 'professional',
            builder: (context, state) => const ProfessionalDemoPage(),
          ),
        ],
      ),
      // Add more routes here...
    ],
  );
});
