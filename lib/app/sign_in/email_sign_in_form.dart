import 'package:flutter/material.dart';

class EmailSignInForm extends StatelessWidget {
  const EmailSignInForm({Key? key}) : super(key: key);

  List<Widget> _buildChildren() {
    return [
      const TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'test@email.com'
        ),
      ),
      const TextField(
        decoration: InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}
