// @dart=2.9
import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/routes.dart';
import 'package:frontend_flutter/Config/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CrowdSourcing App',
      theme: appTheme(),
      initialRoute: '/',
      routes: routes,
    );
  }
}
