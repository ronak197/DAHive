import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPageHome(),
    );
  }
}

class LoginPageHome extends StatefulWidget {
  @override
  _LoginPageHomeState createState() => _LoginPageHomeState();
}

class _LoginPageHomeState extends State<LoginPageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100.0, bottom: 50.0),
                child: Image.asset("assets/dahiveicon2.png", scale: 4.0,),
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: CupertinoTextField(
                        placeholder: "Username",
                        suffix: Container(
                          child: Text(
                            "@daiict.ac.in",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                            ),
                          ),
                          padding: EdgeInsets.only(right: 10.0),
                        ),
                        suffixMode: OverlayVisibilityMode.editing,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(20.0)),
                        style: TextStyle(color: Colors.black54, fontSize: 18.0),
                        padding: EdgeInsets.only(left: 15.0, top: 8.0, bottom: 8.0, right: 15.0),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 7.0),
                    ),
                    Container(
                      child: CupertinoTextField(
                        placeholder: "Password",
                        obscureText: true,
                        decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(20.0)),
                        style: TextStyle(color: Colors.black54, fontSize: 18.0),
                        padding: EdgeInsets.only(left: 15.0, top: 8.0, bottom: 8.0, right: 15.0),
                      ),
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 25.0),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 20.0),
                      child: CupertinoButton(
                        padding: EdgeInsets.only(left: 24.0, right: 24.0),
                        child: Text("Login"),
                        onPressed: () {},
                        color: Colors.blue,
                        pressedOpacity: 0.5,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ],
                )
              ),
            ],
          ),
        ),
      ),
      resizeToAvoidBottomPadding: true,
    );
  }
}
