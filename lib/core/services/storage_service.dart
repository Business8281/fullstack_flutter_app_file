import 'package:hive_flutter/hive_flutter.dart';
import 'logger_service.dart';

class StorageService {
  static Future<void> init() async {
    try {
      await Hive.initFlutter();
      // Open boxes here
      // await Hive.openBox('settings');
      AppLogger.i('Hive Storage Initialized');
    } catch (e) {
      AppLogger.e('Hive Initialization Failed', e);
    }
  }

  static Future<Box> getBox(String name) async {
    if (!Hive.isBoxOpen(name)) {
      return await Hive.openBox(name);
    }
    return Hive.box(name);
  }
}
