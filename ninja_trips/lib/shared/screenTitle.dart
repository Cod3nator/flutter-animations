import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 2),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double value, Widget child) {
        return Opacity(
          opacity: value,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: child,
          ),
        );
      },
    );
  }
}
