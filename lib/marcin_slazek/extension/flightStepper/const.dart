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
    return const Positioned(
        left: 40,
        top: 32,
        child: RotatedBox(
          quarterTurns: 2,
          child: Icon(
            Icons.airplanemode_active,
            size: 64,
          ),
        ));
  }
}

class Line extends StatelessWidget {
  const Line({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 40.0 + 32,
      top: 40,
      bottom: 0,
      width: 1,
      child: Container(color: Colors.white.withOpacity(0.5)),
    );
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
