import 'package:flutter/material.dart';

class Profile_page extends StatefulWidget {
  static String tag = 'home1-page';

  @override
  State<StatefulWidget> createState() => new _Home1State();
}

class _Home1State extends State<Profile_page> {
  @override
  Widget build(BuildContext context) {
    final text = Text(
      'Welcome,',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black54,
        fontSize: 13.0,
      ),
    );

    final name = Text(
      'Habtamu alem',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
      ),
    );

    final addflat = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        onPressed: () {
          // Navigator.of(context).pushNamed(AddFlat.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text('Clap ', style: TextStyle(color: Colors.white)),
      ),
    );

    return new WillPopScope(
      // onWillPop: _onWillPop,
      child: new Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  top: 40.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15.0),
                      child: IconButton(
                        icon: Icon(
                          Icons.settings,
                          color: Colors.lightBlue,
                          size: 28.0,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                child: Hero(
                  tag: 'hero',
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 120.0,
                    child: Image(
                      image: AssetImage('assets/man.png'),
                    ),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 40.0, right: 40.0),
                children: <Widget>[
                  SizedBox(height: 15.0),
                  name,
                  SizedBox(height: 10.0),
                  text,
                  SizedBox(height: 10.0),
                  addflat,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
