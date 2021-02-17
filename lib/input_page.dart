import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';
import 'constants.dart';
import 'gender_content_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kActiveCardColor;
  Color femaleCardColor = kInactiveCardColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = kActiveCardColor;
                        femaleCardColor = kInactiveCardColor;
                      });
                    },
                    child: CardContainer(
                      cardColor: maleCardColor,
                      cardChild: GenderContentCard(
                        icon: FontAwesomeIcons.mars,
                        text: 'MASCULINO',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        maleCardColor = kInactiveCardColor;
                        femaleCardColor = kActiveCardColor;
                      });
                    },
                    child: CardContainer(
                      cardColor: femaleCardColor,
                      cardChild: GenderContentCard(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMININO',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CardContainer(
              cardColor: kActiveCardColor,
              cardChild: null,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CardContainer(
                    cardColor: kActiveCardColor,
                  ),
                ),
                Expanded(
                  child: CardContainer(
                    cardColor: kActiveCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomButtonColor,
            margin: EdgeInsets.only(top: 10.0),
            height: 80.0,
          )
        ],
      ),
    );
  }
}
