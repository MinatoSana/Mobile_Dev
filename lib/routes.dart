import 'package:flutter/material.dart';
import 'package:navigation/pages/Dashboard.dart';
import 'package:navigation/pages/profile.dart';
import 'package:navigation/pages/Login.dart';
import 'package:navigation/pages/Settings.dart';

final Map<String, WidgetBuilder> routes = {
  ProfileScreen.routeName: (BuildContext context) => ProfileScreen(),
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  Dashboard.routeName: (BuildContext context) => Dashboard(),
  Settings.routeName: (BuildContext context) => Settings(),
};
