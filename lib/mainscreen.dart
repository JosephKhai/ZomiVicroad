import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                color: Colors.blueAccent.shade700,
                icon: Icon(Icons.info),
                onPressed: () {
                showDialog<String>(  
                  context: context,
                  builder: (BuildContext context) => AlertDialog(  
                    title: Text('App Information'),
                    content: Text('All contents are copied from Vicroad and translated into Zomi languages. This app is designed to help you practice for Victorian Learner Permit theory test and helping to keep our community safe. This app does not accept any responsibility for the accuracy of the data or result for the test.'),
                  )
                );
                },
              ),
            ],
          ),
        ),
        Expanded(
          flex: 5,
          child: Center(
            child: Image.asset('images/zyalogo.png'),
          ),
        ),
        Center(
          child: Text(
            'Developed by Josephkhaipi',
            style: TextStyle(
                fontSize: 10.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 40.0,
        ),
        Center(
            child: new Text('Organized by ZYA-Melbourne',
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ))),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'KISIN DING',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: (() => Navigator.of(context).pushNamed('/menuScreen')),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

// void infoDisplay() {
//   return Container(
//     child: Text(
//         'All contents are copied from Vicroad and Vicroad Learner Permit Test app, This app is designed to help Zomi Community and road users\' safety in Victoria State'),
//   );
   
    
// }
