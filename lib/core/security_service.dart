import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class SecurityService {
  final _storage = const FlutterSecureStorage();
  final _auth = LocalAuthentication();

  // Secure Storage Methods
  Future<void> writeSecurely(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> readSecurely(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> deleteSecurely(String key) async {
    await _storage.delete(key: key);
  }

  // Biometric Auth Methods
  Future<bool> isBiometricAvailable() async {
    try {
      final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
      final bool canAuthenticate = canAuthenticateWithBiometrics || await _auth.isDeviceSupported();
      return canAuthenticate;
    } on PlatformException catch (e) {
      print('Biometric check error: $e');
      return false;
    }
  }

  Future<bool> authenticate() async {
    try {
      final bool didAuthenticate = await _auth.authenticate(
        localizedReason: 'Please authenticate to access sensitive information',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      return didAuthenticate;
    } on PlatformException catch (e) {
      print('Authentication error: $e');
      return false;
    }
  }
}
