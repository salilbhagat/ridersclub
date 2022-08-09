import 'package:flutter/material.dart';

class AboutusPage extends StatefulWidget {
  AboutusPage({Key? key}) : super(key: key);

  @override
  State<AboutusPage> createState() => _AboutusPageState();
}

class _AboutusPageState extends State<AboutusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "RIDER'S CLUB HELPS RIDERS NAVIGATE TO THEIR DESTINATION.",
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
              "WHEN RIDER CLICK ON NAVIGATE BUTTON ,APPLICATION DISPLAYS EASIEST WAY TOWARDS DESTINATION.")
        ],
      ),
    );
  }
}
