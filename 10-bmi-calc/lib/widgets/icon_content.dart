import 'package:course/resources/styles.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String title;
  final IconData icon;

  IconContent({@required this.title, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: LABEL_STYLE,
        )
      ],
    );
  }
}
