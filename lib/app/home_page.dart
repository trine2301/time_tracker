
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/services/authBase.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.auth}) : super(key: key);
  final AuthBase auth;


  Future<void> _signOut() async {
    try{
      await auth.signOut();

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
