import 'package:course/resources/colors.dart';
import 'package:course/resources/dimens.dart';
import 'package:course/resources/styles.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.title, @required this.onTap});

  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: LARGE_BUTTON_STYLE,
          ),
        ),
        width: double.infinity,
        height: BOTTOM_CONTAINER_HEIGHT,
        color: BOTTOM_CONTAINER_COLOR,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
