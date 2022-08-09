import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

class ContactusPage extends StatefulWidget {
  ContactusPage({Key? key}) : super(key: key);

  @override
  State<ContactusPage> createState() => _ContactusPageState();
}

class _ContactusPageState extends State<ContactusPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ContactUs(
          email: 'salilrbhagat@gmail.com',
          companyName: 'RIDERS CLUB',
          phoneNumber: '+917021822719',
          dividerThickness: 2,
          website: 'https://salilbhagat.firebaseapp.com',
          githubUserName: 'salilbhagat',
          linkedinURL: 'https://www.linkedin.com/in/salil-bhagat-90a9111a5',
          tagLine: 'Developer',
          twitterHandle: 'salilbhagat',
          cardColor: Colors.white,
          companyColor: Colors.black,
          textColor: Colors.black,
          taglineColor: Colors.redAccent,
        ),
      ),
    );
  }
}
