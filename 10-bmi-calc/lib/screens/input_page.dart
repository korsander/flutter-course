import 'package:course/resources/colors.dart';
import 'package:course/resources/styles.dart';
import 'package:course/screens/result_page.dart';
import 'package:course/widgets/bottom_button.dart';
import 'package:course/widgets/reusable_card.dart';
import 'package:course/widgets/value_selector.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/icon_content.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  ValueWrapper weight = ValueWrapper(value: 60);
  ValueWrapper age = ValueWrapper(value: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTouch: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    color: gender == Gender.male
                        ? ACTIVE_CARD_COLOR
                        : INACTIVE_CARD_COLOR,
                    child: IconContent(
                      title: 'MALE',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTouch: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    color: gender == Gender.female
                        ? ACTIVE_CARD_COLOR
                        : INACTIVE_CARD_COLOR,
                    child: IconContent(
                      title: 'FEMALE',
                      icon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: ACTIVE_CARD_COLOR,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: LABEL_STYLE,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: BIG_NUMBER_STYLE,
                      ),
                      Text(
                        'cm',
                        style: LABEL_STYLE,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: ACTIVE_CARD_COLOR,
                    child: ValueSelector(
                      value: weight.value,
                      title: 'WEIGHT',
                      onIncrease: _increaseValue(weight),
                      onDecrease: _decreaseValue(weight),
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: ACTIVE_CARD_COLOR,
                    child: ValueSelector(
                      value: age.value,
                      title: 'AGE',
                      onIncrease: _increaseValue(age),
                      onDecrease: _decreaseValue(age),
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ResultPage();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Function _increaseValue(ValueWrapper wrapper) {
    return () {
      setState(() {
        wrapper.value++;
      });
    };
  }

  Function _decreaseValue(ValueWrapper wrapper) {
    return () {
      setState(() {
        wrapper.value--;
      });
    };
  }
}
