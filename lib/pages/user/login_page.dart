// import 'package:betting_app/create%20product/main.dart';
import 'package:flutter/material.dart';
// import 'package:helloflutter/Pages/forgotpass_page.dart';
import '../user/profile_page.dart';
import '../user/signup_page.dart';

import '../user/profile_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      key: _formKey,
      child: new Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 50.0, right: 50.0, top: 50.0),
            children: <Widget>[
              //            CircleAvatar(
              //                 backgroundColor: Colors.transparent,
              //                 // radius: 60.0,
              //                 // child: Image.asset('assets/2.jpg'),

              // backgroundImage:AssetImage('assets/man.png'),
              //               ),
              Hero(
                tag: "DemoTag",
                child: Image.asset("assets/images/man.png"),
              ),
              SizedBox(height: 48.0),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                decoration: InputDecoration(
                  icon: Icon(Icons.call),
                  labelText: 'Mobile no.',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter some text';
                  }
                },
              ),
              SizedBox(height: 12.0),
              TextFormField(
                autofocus: false,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 12.0),
                ),
              ),
              SizedBox(height: 24.0),
              Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 48.0,
                    // child: Image.asset('assets/2.jpg'),
                    // ),
                  )),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  onPressed: () => Container(),
                  padding: EdgeInsets.all(12),
                  color: Colors.red,
                  child: Text('Log In', style: TextStyle(color: Colors.white)),
                ),
              ),
              FlatButton(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                onPressed: () {
                  // Navigator.of(context).pushNamed(ForgotPassPage.tag);
                },
              ),
              FlatButton(
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                      color: Colors.black87,
                      decoration: TextDecoration.underline),
                ),
                onPressed: () {
                  //
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => SignUpPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
