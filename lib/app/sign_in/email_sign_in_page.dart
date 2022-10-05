import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/app/sign_in/email_sign_in_form.dart';

class EmailSignInPage extends StatelessWidget {
  //const EmailSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in'),
        elevation: 2.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
            child: EmailSignInForm()
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
