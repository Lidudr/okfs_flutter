  import 'package:flutter/material.dart';
// import 'package:helloflutter/Pages/login_page.dart';
import '../user/login_page.dart';


class SignUpPage extends StatefulWidget {
  static String tag = 'signup-page';

  @override
  _SignUpPageState createState() => new _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {

    final name = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        icon: Icon(Icons.person),
        labelText: 'Full Name',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        icon: Icon(Icons.mail),
        labelText: 'Email ID',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final number = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        icon: Icon(Icons.call),
        labelText: 'Mobile No.',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.lock),
        labelText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final conpass = TextFormField(
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        icon: Icon(Icons.spellcheck),
        labelText: 'Confirm Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final loginButton =  Hero(
      tag: 'hero',
      child: Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () {
          //    Navigator.of(context).pushNamed(HomePage.tag);
           Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()),
                );
        },
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text('Sign Up', style: TextStyle(color: Colors.white)),
      ),
    ),
    );

    Container(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.red,
          size: 25.0,
        ),
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()),
                );
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
            children: <Widget>[
        Padding(
        padding: EdgeInsets.only(top: 40.0, left: 20.0),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,

              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                  size: 25.0,
                ),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LoginPage()),
                );
                },
              ),
            ),
            SizedBox(width: 0.0),
            Text(
              'Register',
              style: TextStyle(color: Colors.lightBlue, fontSize: 20.0),
            ),
          ],
        ),
      ),
        ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 40.0, right: 40.0),
          children: <Widget>[
            SizedBox(height: 24.0),
            name,
            SizedBox(height: 12.0),
            email,
            SizedBox(height: 12.0),
            number,
            SizedBox(height: 12.0),
            password,
            SizedBox(height: 12.0),
            conpass,
            SizedBox(height: 24.0),
            loginButton,
          ],
        ),
            ],
        ),
      ),
    );
  }
}