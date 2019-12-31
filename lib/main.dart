import 'package:flutter/material.dart';
import 'menuScreen.dart';
import 'mainscreen.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Zomi Vicroad Learner',  style: TextStyle(fontSize: 22),),
            centerTitle: true,
          ),
          backgroundColor: Colors.grey.shade300,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: MainScreen(),
            ),
          ),
        ),

        //new
        routes: <String, WidgetBuilder>{
          '/menuScreen': (BuildContext context) => new MenuScreen(),
        });
  }
}


