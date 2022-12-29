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
            IconUp(),
            IconDown(),
          ],
        ));
  }
}
