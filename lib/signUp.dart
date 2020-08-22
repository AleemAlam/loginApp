import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {
  MySignUpPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
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
              " Sign Up",
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
                    " Here",
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
                    ".",
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "EMAIL",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "CONFIRM PASSWORD",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        )),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          setState(() {});
                        }
                      },
                      child: Container(
                        height: 50,
                        child: Material(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,
                          elevation: 7,
                          child: GestureDetector(
                            child: Center(
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already  Have an Account?",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/login');
                          },
                          child: Text(
                            " Login Now",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
