import 'dart:io';
import 'package:flutter/material.dart';
import 'package:zomi_vicroad_learner/icon_content.dart';
import 'package:zomi_vicroad_learner/reusable_card.dart';
import 'package:zomi_vicroad_learner/quize/victoriaSpecific.dart';
import 'package:zomi_vicroad_learner/quize/trafficLightLane.dart';
import 'package:zomi_vicroad_learner/quize/trafficLight.dart';
import 'package:zomi_vicroad_learner/quize/speedLimit.dart';
import 'package:zomi_vicroad_learner/quize/pedestrain.dart';
import 'package:zomi_vicroad_learner/quize/negligence.dart';
import 'package:zomi_vicroad_learner/quize/intersection.dart';
import 'package:zomi_vicroad_learner/quize/fatigue.dart';
import 'package:zomi_vicroad_learner/quize/alcoholDrugs.dart';
import 'package:zomi_vicroad_learner/quize/seatBelt.dart';
import 'quize/generalKnowledge.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //new

      home: Scaffold(
        appBar: AppBar(
          title: Text('Zomi Vicroad Learner', style: TextStyle(fontSize: 22),),
          centerTitle: true,
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text('Main Menu'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                  leading: Icon(Icons.close),
                  title: Text('Close App (Khak ding)'),
                  onTap: () => exit(0))
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VictoriaSpecific()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade700,
                          cardChild: IconContent(
                            label: 'VICTORIA SPECIFIC (Victoria aituam)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GeneralKnowledge()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.red.shade900,
                          cardChild: IconContent(
                            label: 'GENERAL KNOWLEDGE (Ahuampi theih ding)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AlcoholDrugs()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade900,
                          cardChild: IconContent(
                            label:
                                'Alcohol And Drugs (Zu leh Khamtheih zatui/zatang)',
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fatigue()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.red.shade900,
                          cardChild: IconContent(
                            label:
                                'Fatigue And Defensive (Ihmut suahna pan kidal zia)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Intersection()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade500,
                          cardChild: IconContent(
                            label: 'Intersections (Lamka bom)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrafficLightLane()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.teal.shade500,
                          cardChild: IconContent(
                            label:
                                'TRAFFIC LIGHT AND LANE (Traffic mei leh kongzing)',
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Negligence()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade700,
                          cardChild: IconContent(
                            label: 'NEGLIGENT DRIVING (Mawtaw gina hawllo)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Pedestrain()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.teal.shade500,
                          cardChild: IconContent(
                            label: 'Pedestrains (Khe tawh lampaite/na)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeatBelt()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade900,
                          cardChild: IconContent(
                            label: 'SEAT BELTS (Tutna gak)',
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SpeedLimit()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade500,
                          cardChild: IconContent(
                            label: 'SPEED LIMIT (Mawtaw hatna)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrafficLight()),
                        );
                      },
                      child: ReusableCard(
                          colour: Colors.blue.shade900,
                          cardChild: IconContent(
                            label: 'TRAFFIC LIGHT (Traffic mei)',
                          )),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
