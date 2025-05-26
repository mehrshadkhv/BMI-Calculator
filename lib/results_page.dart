import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: const Text(
                'Your Result',
                style: KTitleTextStyle,
              ),
            ),
          ),
          const Expanded(
              flex: 5,
              child: ReusableCard(
                colour: KActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Normal', style: KResultTextStyle),
                    Text('18.3', style: KBMITextStyle),
                    Text("Your BMI is 18.3, which is normal. Keep it up!",
                        textAlign: TextAlign.center, style: KBodyTextStyle),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
