import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.bold);

class IconContent extends StatelessWidget {
IconContent({this.label,this.onTap});

final String label;
final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(right: 10.0, left: 10.0),),
      Text( 
        label, style: labelTextStyle,
        textAlign: TextAlign.center,
      ), 
         
     
    ],
      
    );
  }
}