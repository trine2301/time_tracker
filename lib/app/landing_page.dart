import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/home_page.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  User? _user;

  //TODO fix code so you can restart app and still be logged in.
/*  @override
  void initState() {
    super.initState();
    _updateUser(FirebaseAuth.instance.currentUser);
  }*/



  void _updateUser(User user) {
    setState(() {
      _user = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) //_user can never be null, so find another solution.
    {
      return SignInPage(
          onSignIn: (user) => _updateUser(user!),
      );
    }

    return HomePage(
      onSignOut: () => _updateUser(_user!), //Fluttercourse: _updateUser(null),
    );
    //return SignInPage(onSignIn: (user) => _updateUser(user!));
  }
}