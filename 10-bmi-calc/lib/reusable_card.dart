import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTouch;

  ReusableCard({@required this.color, this.child, this.onTouch});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTouch,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child,
      ),
    );
  }
}
