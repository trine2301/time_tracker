
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_flutter_course/app/sign_in/social_sign_in_button.dart';
import 'package:time_tracker_flutter_course/services/authBase.dart';


class SignInPage extends StatelessWidget {
  //const SignInPage({Key? key}) : super(key: key);
  const SignInPage({Key? key, required this. auth}) : super(key: key);
  final AuthBase auth;


  Future<void> _signInAnonymously() async {
    try{
      await auth.signInAnonomously();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
        elevation: 2.0,
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Text(
            'Sign in',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 48.0),
          const SizedBox(height: 8.0),
          SocialSignInButton(
            assetName: 'images/google-logo.png',
            text: 'Sign in with google',
            textColor: Colors.black87,
            color: Colors.white,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),
          SocialSignInButton(
            text: 'Sign in with google',
            textColor: Colors.white,
            color: Color(0xFF334D92),
            assetName: 'images/facebook-logo.png',
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),
          SignInButton(
            text: 'Sign in with email',
            textColor: Colors.white,
            color: Colors.teal.shade700,
            onPressed: () {},
          ),
          const SizedBox(height: 8.0),
          const Text(
            'or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8.0),
          SignInButton(
            text: 'Go anonymous',
            textColor: Colors.black,
            color: Colors.lime.shade300,
            onPressed: _signInAnonymously,
          ),
        ],
      ),
    );
  }
}
