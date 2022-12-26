import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>
    with SingleTickerProviderStateMixin {
  // Updating with AnimationController
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );

    // animationController.forward();
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
          builder: (context, _) {
            double slide = maxSlide * animationController.value;
            double scale = 1 - (animationController.value * 0.3);

            return Stack(
              children: [
                myDrawer,

                // Transform.scale(scale: 0.5, child: myContent), -used the primary,basic transform scale.

                // Using Matrix transform for explict.
                Transform(
                  transform: Matrix4.identity()
                    ..translate(slide)
                    ..scale(scale),
                  alignment: Alignment.centerLeft,
                  child: myContent,
                ),
              ],
            );
          }),
    );
  }
}
