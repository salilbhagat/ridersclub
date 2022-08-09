import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';
import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/road.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 250),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logo.gif'),
                radius: 100,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 35),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.85),
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
                color: const Color(0x000000).withOpacity(0.5),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SignInButton(
                      buttonType: ButtonType.google,
                      buttonSize: ButtonSize.medium,
                      onPressed: () {
                        AuthService().signInWithGoogle();
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
