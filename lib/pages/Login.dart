import 'package:flutter/material.dart';
import 'package:navigation/pages/Dashboard.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "/login";

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Login Page",
                style: TextStyle(fontSize: 20.0),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your email'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your password'),
                obscureText: true,
                maxLength: 16,
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  login(context);
                },
                label: Text("Login"),
                icon: Icon(Icons.login),
                style: ElevatedButton.styleFrom(primary: Color(0xFFBDBDBD)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(BuildContext context) {
    Navigator.pushNamed(context, Dashboard.routeName);
  }
}
