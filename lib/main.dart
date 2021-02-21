// import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';


void main() {
  runApp(Counter());
}

class Counter extends StatefulWidget {
  Counter({Key key}) : super(key: key);
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  Color _color = randomColor();

  _changeColor() {
    setState(() => this._color = randomColor());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Container(
        color: _color,
        child: Container(
              alignment: Alignment.center,
              child: Text(
              'Hey there',
               textDirection: TextDirection.ltr,
               style: TextStyle(fontSize: 26,)     
        )
      ),
      ),
    );
  }
}

Color randomColor() {
  return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
      .withOpacity(1.0);
}
