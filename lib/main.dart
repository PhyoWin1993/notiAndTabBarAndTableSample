import 'package:app/tabWidget.dart/bike.dart';
import 'package:app/tabWidget.dart/car.dart';
import 'package:app/tabWidget.dart/drive.dart';
import 'package:app/tabWidget.dart/flight.dart';
import 'package:app/tabWidget.dart/noti.dart';
import 'package:app/tabWidget.dart/train.dart';
import 'package:flutter/material.dart';

import 'choice.dart';

void main() => runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counta = 2;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text(" Flutter Tab bar and Table "),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map<Widget>((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),

            // Action

            actions: [
              Noti(
                count: counta,
                onTap: _awesome,
              ),
            ],
          ),

          // end TabBar
          // body: TabBarView(
          //   children: choices.map<Widget>((Choice choice) {
          //     return Padding(
          //         padding: EdgeInsets.all(24.0),
          //         child: ChoicePage(
          //           choice: choice,
          //         ));
          //   }).toList(),
          // ),

          body: TabBarView(
            children: [Car(), Bike(), Train(), Drive(), Flight()],
          ),
        ));
  }

  _awesome() {
    print(" Notification Data");
    setState(() {
      counta += 1;
    });
  }
}
