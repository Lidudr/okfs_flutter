import 'package:flutter/material.dart';

import 'package:okdfs/pages/home.dart';
import 'package:okdfs/pages/reminder/widgets/coming_stuff.dart';
import 'package:okdfs/pages/user/signup.dart';
import 'package:okdfs/pages/reminder/util/dictionnary.dart' as dictionnary;
import 'package:okdfs/pages/reminder/database/db_handler.dart';
import 'package:okdfs/pages/reminder/database/settings_model.dart';



// void main() => runApp(new MyApp());
void main(){
  initLang();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  Widget productCard;

  @override
  Widget build(BuildContext context) {
    debugHighlightDeprecatedWidgets = false;

    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      routes: {
        '/home': (BuildContext context) => HomePage(),
        '/login': (BuildContext context) => LoginSignUpPage(),
          '/reminder': (BuildContext context) =>  new MaterialApp(
             theme: ThemeData(primarySwatch: Colors.lightBlue),
            home: ComingStufWidget(),)

        
      },
      // onUnknownRoute: (RouteSettings setting) {
      //   return MaterialPageRoute(
            // builder: (BuildContext context) => new MaterialApp(
            //       home: ComingStufWidget(),
            //     ));
      // },
      title: 'home ',
      home: LoginSignUpPage(),
    );
  }
}
void initLang() async {
  dictionnary.lang = 'en';
  final dbh = DatabaseHandler.internal();
  Settings settings = await dbh.readSettings();
  dictionnary.lang = (settings.lang == null) ? 'en' : settings.lang;
}

