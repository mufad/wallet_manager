import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        child: new Center(
            child: new Icon(Icons.pie_chart, size: 150.0, color: Colors.teal)
        )
    );
  }

}