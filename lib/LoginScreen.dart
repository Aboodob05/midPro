import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'StartScreen.dart';

class LoginScreen extends StatelessWidget {
  static String? id;
  static String? getdata() => id;

  Duration get loginTime => Duration(milliseconds: 2250);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FlutterLogin(
        title: 'SHARYAN',
        onLogin: (LoginData data) async {
          if (data.name != null ) {
            id = data.name;
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => Startscreen())
            );
            return null;
          }
          else {
            return "Invalid ID";
          }
        },
        onSignup: (SignupData data) async {
          return null;
        },
        onRecoverPassword: (String name) async {
          return null;
        },

        loginProviders: [
          LoginProvider(
            icon: Icons.assignment_ind,
            label: 'Enter as a guest',
            callback: () {},
          ),
        ],
        theme: LoginTheme(
          primaryColor: Colors.redAccent,
          accentColor: Colors.red.shade900,
          inputTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.red.shade100,
            labelStyle: TextStyle(color: Colors.red.shade900),
            hintStyle: TextStyle(color: Colors.red.shade800),
          ),
        ),
        onSubmitAnimationCompleted: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => Startscreen())
          );
        },
      ),
    );
  }
}
