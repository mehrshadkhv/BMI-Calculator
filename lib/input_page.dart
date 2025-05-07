import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _InputPageState createState() => _InputPageState(); 
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Expanded(child:
          Row(
            children: [
              Expanded(child:
              ReusableCard(colour: activeCardColour,cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.mars,
                  size: 80.0,
                  ),
                  SizedBox(height: 15.0),
                  Text('MALE',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFF8D8E98),
                  ),
                  ),
                ],
              ),),
              ),
              Expanded(child:
              ReusableCard(colour: activeCardColour,cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.venus),
                  Text('FEMALE'),
                ],
              ),),
              ),
            ],
          ),
          ),
          const Expanded(child:
          ReusableCard(colour: activeCardColour,cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.venus),
              Text('FEMALE'),
            ],
          ),),
          ),
      const Expanded(child:
          Row(
            children: [
              Expanded(child:
              ReusableCard(colour: activeCardColour,cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.mars),
                  Text('MALE'),
                ],
              ),),
              ),
              Expanded(child:
              ReusableCard(colour: activeCardColour,cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.venus),
                  Text('FEMALE'),
                ],
              ),),
          ),
            ],
          ),),
          Container(
            color: bottomContainerColour,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: const Center(
              child: Text('CALCULATE'),
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  const ReusableCard({super.key, required this.colour, required this.cardChild});
  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(15.0),
            decoration:  BoxDecoration(
              color: colour,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: cardChild,
          );
  }
}