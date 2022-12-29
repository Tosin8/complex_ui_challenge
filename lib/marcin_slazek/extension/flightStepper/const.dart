import 'package:flutter/material.dart';

class ArrowIcons extends StatelessWidget {
  const ArrowIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 8,
        bottom: 0,
        child: Column(
          children: [
            IconUp,
            IconDown,
          ],
        ));
  }
}

var IconUp = const Icon(Icons.arrow_upward);

var IconDown = const Icon(Icons.arrow_circle_down_rounded);

class Plane extends StatelessWidget {
  const Plane({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 40, 
      top: 32, 
      child: 
    );
  }
}
