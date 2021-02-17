import 'package:bmi_calculator/components/card.dart';
import 'package:bmi_calculator/components/footer_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
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
            child: CardContainer(
              cardColor: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'NORMAL',
                    style: kStatusTextStyle,
                  ),
                  Text(
                    '00.0',
                    style: kResultNumberTextStyle,
                  ),
                  Text(
                    'Você está no índice ideal!',
                    style: kResultDescriptionTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          FooterButton(
            onTap: () {
              Navigator.pop(context);
            },
            text: 'RECALCULAR',
          )
        ],
      ),
    );
  }
}
