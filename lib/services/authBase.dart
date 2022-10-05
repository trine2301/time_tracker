import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User? get currentUser;
  Future<User?> signInAnonomously();
  Future<void> signOut();
  Stream<User?> authStateChanges();
}