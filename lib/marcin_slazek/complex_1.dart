import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final double maxSlide = 250.0;
  @override
  Widget build(BuildContext context) {
    var myDrawer = Container(color: Colors.blue);
    var myContent = Container(color: Colors.yellow);
    return Stack(children: [
      myDrawer,

      // Transform.scale(scale: 0.5, child: myContent), -used the primary,basic transform scale.

      // Using Matrix transform for explict.
      Transform(
        transform: Matrix4.identity()
          ..translate(maxSlide)
          ..scale(0.5),
        alignment: Alignment.centerLeft,
        child: myContent,
      ),
    ]);
  }
}
