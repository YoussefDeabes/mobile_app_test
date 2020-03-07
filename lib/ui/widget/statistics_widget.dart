import 'package:flutter/material.dart';

class StatisticsWidget extends StatefulWidget {
  @override
  _StatisticsWidgetState createState() => _StatisticsWidgetState();
}

class _StatisticsWidgetState extends State<StatisticsWidget> {
  ///All widgets in the same build widget not separated in functions due to time and you may find 
  ///some duplicated widgets.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Text('Statistics')),
    );
  }
}