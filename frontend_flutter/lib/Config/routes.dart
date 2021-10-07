
import 'package:flutter/widgets.dart';
import 'package:frontend_flutter/Views/UI/Auth/login_screen.dart';
import 'package:frontend_flutter/Views/UI/Auth/sign_up_role.dart';
import 'package:frontend_flutter/Views/UI/Auth/signup_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => LoginScreen(),
  "/signup/screen": (BuildContext context) => SignUpScreen(),
  "/signup/role": (BuildContext context) => SignUpRole(),


};
