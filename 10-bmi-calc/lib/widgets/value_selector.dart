import 'package:course/resources/styles.dart';
import 'package:course/widgets/round_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ValueSelector extends StatelessWidget {
  const ValueSelector(
      {@required this.title,
      @required this.value,
      this.onIncrease,
      this.onDecrease});

  final int value;
  final String title;
  final Function onIncrease;
  final Function onDecrease;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: LABEL_STYLE,
        ),
        Text(
          value.toString(),
          style: BIG_NUMBER_STYLE,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: () {
                onDecrease();
              },
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: () {
                onIncrease();
              },
            )
          ],
        ),
      ],
    );
  }
}

class ValueWrapper {
  ValueWrapper({this.value});
  int value;
}
