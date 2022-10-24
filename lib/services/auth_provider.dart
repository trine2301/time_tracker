import 'package:flutter/cupertino.dart';
import 'package:time_tracker_flutter_course/services/authBase.dart';

class AuthProvider extends InheritedWidget {



  final AuthBase auth;
  final Widget child;




  @override
  bool updateShouldNotify(InheritedWidget oldWIdget) => false;

  // final auth = AuthProvider.of(context);

  static AuthBase of(BuildContext context) {
    AuthProvider provider = context.dependOnInheritedWidgetOfExactType<AuthProvider>();
    return provider.auth;

}


}