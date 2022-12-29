import 'package:flutter/material.dart';
import 'dart:math' as math;

class Flip extends StatefulWidget {
  const Flip({super.key});

  @override
  State<Flip> createState() => _FlipState();
}

class _FlipState extends State<Flip> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    animationController.forward();
  }

  void toggle() => animationController.isDismissed
      ? animationController.forward()
      : animationController.reverse();

  final double maxSlide = 280.0;
  @override
  Widget build(BuildContext context) {
    var myDrawer = Container(color: Colors.blue);
    var myContent = Container(color: Colors.yellow);
    return GestureDetector(
      onTap: toggle,
      child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            double slide = maxSlide * animationController.value;
            double scale = 1 - (animationController.value * 0.3);

            return Stack(children: [
              Transform.translate(
                offset: Offset(maxSlide * (animationController.value - 1), 0),
                child: Transform(
                    transform: Matrix4.identity()
                      ..setEntry(3, 2, 0.001)
                      ..rotateY(math.pi / 2 * (1 - animationController.value)),
                    alignment: Alignment.centerLeft,
                    child: myDrawer),
              ),
              myContent
            ]);
          }),
    );
  }
}
