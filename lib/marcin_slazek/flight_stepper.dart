import 'package:flutter/material.dart';

class FlightStepper extends StatefulWidget {
  const FlightStepper({super.key});

  @override
  State<FlightStepper> createState() => _FlightStepperState();
}

class _FlightStepperState extends State<FlightStepper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        Container(
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Colors.purple, Color(0xFF4A148C)])
  ),
)
       
      child: SafeArea(
          child: Stack(
        children: const [],
      )),
    ); 
  }
}
