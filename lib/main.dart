import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation/pages/Login.dart';
import 'package:navigation/routes.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: routes,
    theme: new ThemeData(
        scaffoldBackgroundColor: const Color(0xFFB39DDB),
        primaryColor: Color(0xFFBDBDBD)),
    home: LoginScreen(),
  ));
}
