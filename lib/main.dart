import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/Login.dart';
import 'package:navigation/routes.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: routes,
    theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFB39DDB),
        primaryColor: Color(0xFFBDBDBD)),
    home: LoginScreen(),
  ));
}
