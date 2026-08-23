import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../shared/models/user_model.dart';
import '../constants/app_constants.dart';

/// Firebase Authentication Service with Role-Based Access Control
class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Current user stream
  Stream<User?> get authStateChanges => _auth.authStateChanges();

  // Current user
  User? get currentUser => _auth.currentUser;

  /// Sign up with email and password
  Future<UserModel> signUpWithEmail({
    required String email,
    required String password,
    required String name,
    required String role,
  }) async {
    try {
      // Validate role
      if (![AppConstants.roleUser, AppConstants.rolePractitioner, AppConstants.roleAdmin]
          .contains(role)) {
        throw Exception('Invalid role');
      }

      // Create Firebase Auth user
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;
      if (user == null) throw Exception('User creation failed');

      // Create user document in Firestore
      final userModel = UserModel(
        id: user.uid,
        email: email,
        name: name,
        role: role,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      await _firestore
          .collection(AppConstants.usersCollection)
          .doc(user.uid)
          .set(userModel.toJson());

      // Update display name
      await user.updateDisplayName(name);

      return userModel;
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('Sign up failed: $e');
    }
  }

  /// Sign in with email and password
  Future<UserModel> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = userCredential.user;
      if (user == null) throw Exception('Sign in failed');

      // Get user data from Firestore
      final userDoc = await _firestore
          .collection(AppConstants.usersCollection)
          .doc(user.uid)
          .get();

      if (!userDoc.exists) {
        throw Exception('User data not found');
      }

      return UserModel.fromJson(userDoc.data()!);
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    } catch (e) {
      throw Exception('Sign in failed: $e');
    }
  }

  /// Sign out
  Future<void> signOut() async {
    await _auth.signOut();
  }

  /// Get current user data
  Future<UserModel?> getCurrentUserData() async {
    final user = currentUser;
    if (user == null) return null;

    try {
      final userDoc = await _firestore
          .collection(AppConstants.usersCollection)
          .doc(user.uid)
          .get();

      if (!userDoc.exists) return null;

      return UserModel.fromJson(userDoc.data()!);
    } catch (e) {
      return null;
    }
  }

  /// Stream current user data
  Stream<UserModel?> streamCurrentUserData() {
    final user = currentUser;
    if (user == null) return Stream.value(null);

    return _firestore
        .collection(AppConstants.usersCollection)
        .doc(user.uid)
        .snapshots()
        .map((doc) {
      if (!doc.exists) return null;
      return UserModel.fromJson(doc.data()!);
    });
  }

  /// Check if user has role
  Future<bool> hasRole(String role) async {
    final userData = await getCurrentUserData();
    return userData?.role == role;
  }

  /// Check if user is admin
  Future<bool> isAdmin() async {
    return await hasRole(AppConstants.roleAdmin);
  }

  /// Check if user is practitioner
  Future<bool> isPractitioner() async {
    return await hasRole(AppConstants.rolePractitioner);
  }

  /// Check if user is regular user
  Future<bool> isUser() async {
    return await hasRole(AppConstants.roleUser);
  }

  /// Reset password
  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      throw _handleAuthException(e);
    }
  }

  /// Update user profile
  Future<void> updateUserProfile({
    String? name,
    String? photoUrl,
  }) async {
    final user = currentUser;
    if (user == null) throw Exception('No user logged in');

    try {
      if (name != null) {
        await user.updateDisplayName(name);
      }
      if (photoUrl != null) {
        await user.updatePhotoURL(photoUrl);
      }
    } catch (e) {
      throw Exception('Profile update failed: $e');
    }
  }

  /// Delete account
  Future<void> deleteAccount() async {
    final user = currentUser;
    if (user == null) throw Exception('No user logged in');

    try {
      // Delete user document
      await _firestore
          .collection(AppConstants.usersCollection)
          .doc(user.uid)
          .delete();

      // Delete auth user
      await user.delete();
    } catch (e) {
      throw Exception('Account deletion failed: $e');
    }
  }

  /// Handle Firebase Auth exceptions
  String _handleAuthException(FirebaseAuthException e) {
    switch (e.code) {
      case 'weak-password':
        return 'Password is too weak';
      case 'email-already-in-use':
        return 'Email is already registered';
      case 'user-not-found':
        return 'No user found with this email';
      case 'wrong-password':
        return 'Incorrect password';
      case 'invalid-email':
        return 'Invalid email address';
      case 'user-disabled':
        return 'This account has been disabled';
      case 'too-many-requests':
        return 'Too many attempts. Please try again later';
      case 'operation-not-allowed':
        return 'Operation not allowed';
      default:
        return 'Authentication error: ${e.message}';
    }
  }
}

// Riverpod providers
final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final authStateProvider = StreamProvider<User?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges;
});

final currentUserDataProvider = StreamProvider<UserModel?>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.streamCurrentUserData();
});
