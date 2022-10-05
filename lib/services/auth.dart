import 'package:firebase_auth/firebase_auth.dart';
import 'package:time_tracker_flutter_course/services/authBase.dart';




//Wrapper for firebase class
class Auth implements AuthBase {

  final _firebaseAuth = FirebaseAuth.instance;

  //returns a stream of type User, and we want to use it to rebuild the landingPage whenever the sign in state changes.
  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  Future<User?> signInAnonomously() async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    return userCredential.user;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}