import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield(
      {super.key,
      required this.text,
      required this.controller,
      required this.hintText});
  final String text;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'Placeholder');
              },
              child: const Text('Text')),
        ),
      ],
    );
  }
}
