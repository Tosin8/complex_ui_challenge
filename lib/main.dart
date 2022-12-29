import 'package:flutter/material.dart';

import 'marcin_slazek/3d_flip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Complex UI Challenge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Flip(),
    );
  }
}
