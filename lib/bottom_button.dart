import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onTap, required this.buttonTitle});

  final VoidCallback onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: KBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: KBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: KLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
