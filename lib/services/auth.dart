import 'package:firebase_auth/firebase_auth.dart';
import 'package:time_tracker_flutter_course/services/authBase.dart';




//Wrapper for firebase class
class Auth implements AuthBase {

  final _firebaseAuth = FirebaseAuth.instance;
  User? get currentUser => _firebaseAuth.currentUser;

  Future<User?> signInAnonomously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}