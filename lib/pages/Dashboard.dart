import 'package:flutter/material.dart';
import 'package:navigation/pages/Settings.dart';
import 'package:navigation/pages/profile.dart';

class Dashboard extends StatefulWidget {
  static String routeName = "/dashboard";

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Welcome!",
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      goToPage(context, ProfileScreen.routeName);
                    },
                    label: Text("Profile"),
                    icon: Icon(Icons.login),
                    style: ElevatedButton.styleFrom(primary: Color(0xFFBDBDBD)),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      goToPage(context, Settings.routeName);
                    },
                    label: Text("Settings"),
                    icon: Icon(Icons.login),
                    style: ElevatedButton.styleFrom(primary: Color(0xFFBDBDBD)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void goToPage(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }
}
