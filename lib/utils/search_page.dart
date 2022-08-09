import 'package:flutter/material.dart';
import 'package:ridersclub/auth_service.dart';
import 'package:ridersclub/pages/settings_page.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController searchTextEditingController = TextEditingController();
  homePageHeader() {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: <Widget>[
        // IconButton(
        //   icon: Icon(
        //     Icons.settings,
        //   ),
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => SettingsPage()),
        //     );
        //   },
        // ),
      ],
      backgroundColor: Colors.black,
      title: Container(
        margin: new EdgeInsets.only(bottom: 4.0),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          controller: searchTextEditingController,
          decoration: InputDecoration(
            hintText: "search",
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            filled: true,
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(
                Icons.clear,
              ),
              onPressed: emptyTextFormField,
            ),
          ),
        ),
      ),
    );
  }

  emptyTextFormField() {
    searchTextEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: homePageHeader(),
        body: RaisedButton.icon(
            onPressed: () {
              AuthService().signOut();
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            label: Text("data")));
  }
}
