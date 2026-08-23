import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'core/services/storage_service.dart';
import 'core/services/logger_service.dart';
import 'core/theme/wellness_theme.dart';
import 'core/router/app_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  // Initialize Core Services
  await StorageService.init();
  AppLogger.i('WellnessHub Started');

  // Initialize Firebase
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    AppLogger.i('Firebase initialized successfully');
  } catch (e) {
    AppLogger.e('Firebase initialization failed: $e');
  }

  runApp(const ProviderScope(child: WellnessHubApp()));
}

class WellnessHubApp extends ConsumerWidget {
  const WellnessHubApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'WellnessHub',
      debugShowCheckedModeBanner: false,
      theme: WellnessTheme.lightTheme,
      routerConfig: router,
    );
  }
}
