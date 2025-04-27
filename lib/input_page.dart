import 'package:flutter/material.dart';

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
      body: const Column(
        children: [
          Expanded(child:
          Row(
            children: [
              Expanded(child:
              ReusableCard(),
              ),
              Expanded(child:
              ReusableCard(),
              ),
            ],
          ),
          ),
          Expanded(child:
          ReusableCard(),
          ),
      Expanded(child:
          Row(
            children: [
              Expanded(child:
              ReusableCard(),
              ),
              Expanded(child:
              ReusableCard(),
          ),
            ],
          ),),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            margin: const EdgeInsets.all(15.0),
            decoration:  BoxDecoration(
              color: const Color(0xFF1D1E33),
              borderRadius: BorderRadius.circular(10.0),
            ),
          );
  }
}