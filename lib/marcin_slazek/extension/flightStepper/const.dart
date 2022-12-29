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

class Page extends StatefulWidget {
  final int number;
  final String question;
  final List<String> answers;
  final VoidCallback onOptionSelected;

  const Page(
      {super.key,
      required this.number,
      required this.question,
      required this.answers,
      required this.onOptionSelected});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 32),
        StepNumber(number: widget.number),
        StepQuestion(question: widget.question),
        const Spacer(),
        ...widget.answers.map((String answer) {
          return OptionItem(
            name: answer,
            onTap: widget.onOptionSelected,
          );
        }),
        const SizedBox(height: 64),
      ],
    );
  }
}

class OptionItem extends StatefulWidget {
  const OptionItem({super.key});

  @override
  State<OptionItem> createState() => _OptionItemState();
}

class _OptionItemState extends State<OptionItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(children: [
            const SizedBox(width: 26),
            Dot(),
            const SizedBox(width: 26),
            Expanded(
              child: Text(widget.name),
            )
          ]),
        ));
  }
}
