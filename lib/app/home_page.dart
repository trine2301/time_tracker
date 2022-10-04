import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.onSignOut}) : super(key: key);

  final VoidCallback onSignOut;

  Future<void> _signOut() async {
    try{
      await FirebaseAuth.instance.signOut();
      onSignOut();

    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: <Widget>[
          IconButton(
            onPressed:
              _signOut,
            icon: const Icon(Icons.logout_outlined, size: 32,),
          )
        ],
        elevation: 2.0,
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
