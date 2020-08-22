import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        margin: EdgeInsets.only(left: 12, top: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " Welcome",
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              children: [
                Container(
                  child: Text(
                    " Back",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 142),
                  child: Text(
                    " User",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: "Roboto",
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Text(
                "This is HOME",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
