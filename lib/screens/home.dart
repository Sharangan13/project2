import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[
          SafeArea(
            child: Text(
              'Congratulations bro!!!',
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.green,
                  fontFamily: 'Times New Roman',
                  letterSpacing: 4),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            child: Text("Logout"),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Log Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => login_screen()));
              });
            },
          ),
        ],
      )),
    );
  }
}
