import 'package:flutter/material.dart';
import 'package:okdfs/pages/reminder/widgets/coming_stuff.dart';

import 'package:okdfs/pages/user/signup_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(automaticallyImplyLeading: false, title: Text("choose ")),
              ListTile(
                // leading: Icon(Icons.create),
                title: Text("Reminder"),
                onTap: () {
                  // MaterialPageRoute(builder: (BuildContext context) {
                    // new MaterialApp(
                    //   home: ComingStufWidget(),
                    // );
                  // });

                  Navigator.pushNamed(context, '/reminder');
                },
              ),
              ListTile(
                // leading: Icon(Icons.create),
                title: Text("stuff"),
                onTap: () {
                  // Navigator.pushReplacementNamed(context, '/new');
                },
              ),
              ListTile(
                // leading: Icon(Icons.create),
                title: Text("stuff"),
                onTap: () {
                  // Navigator.pushReplacementNamed(context, '/new');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
            )
          ],
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: _buildProductItem,
          itemCount: 3,
        ));
  }
}

// ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: _buildProductItem,
//                       itemCount: 3,
Widget _buildProductItem(BuildContext context, int index) {
  return Container(
    height: 400,
    width: 200,
    child: Card(
        shape: BeveledRectangleBorder(),
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Image.asset('assets/kidney.jpg'),
              height: 150,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 2.0,
              width: 450,
              color: Colors.black,
              margin: const EdgeInsets.only(left: 0.0, right: 0.0),
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                )
              ],
            ),
          ],
        )),
  );
}

String text =
    "National Kidney Foundation Announces the Launch of Kidney Medicine!Kidney Medicine is now accepting submissions in the following article categories: original research, case reports, and reviews. Original research articles span a wide range of topics, including qualitative and quantitative research; health care policy, delivery, and disparities research; and epidemiology and outcomes research.";
String text2 =
    "The prevailing model of care for patients receiving long-term maintenance dialysis is organized around treating problems specific to kidney disease, maximizing treatment adherence, and achieving dialysis-related quality measures.1 The goal of this care model is to reduce morbidity and extend life. This approach has many advantages, including standardizing care across dialysis centers and facilitating quality comparisons.2, 3 However, for older adults, who represent a large proportion of those receiving dialysis, disease-based care also presents several challenges.4 Dialysis is associated with a high symptom burden and often requires patients to consider trade-offs between potential life extension and the possibility of receiving high-intensity health care.5, 6, 7 Although older patients are at risk for functional decline and nursing home placement,8 dialysis care does not specifically address loss of independence or social isolation and in some cases may contribute to these poor outcomes.";
