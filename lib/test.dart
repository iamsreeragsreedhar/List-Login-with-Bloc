import 'package:flutter/material.dart';

class MySegmentedControl extends StatefulWidget {
  @override
  State<MySegmentedControl> createState() => _MySegmentedControlState();
}

class _MySegmentedControlState extends State<MySegmentedControl> {
  String selected = 'Beginner';

  final segments = const [
    ButtonSegment(value: 'Beginner', label: Text('Beginner')),
    ButtonSegment(value: 'Intermediate', label: Text('Intermediate')),
    ButtonSegment(value: 'Expert', label: Text('Expert')),
  ];

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<String>(
      segments: segments,
      selected: {selected},
      onSelectionChanged: (newSelection) {
        setState(() {
          selected = newSelection.first;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.purple;
          }
          return Colors.transparent;
        }),
        foregroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return Colors.purple;
        }),
        side: MaterialStateProperty.all(
          BorderSide(color: Colors.purple, width: 2),
        ),
      ),
    );
  }
}
