import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  final String hintText;
  final TextEditingController textController;
  const Customtextfield(
      {Key? key, required this.hintText, required this.textController})
      : super(key: key);
  @override
  State<Customtextfield> createState() => _TextfieldButtonState();
}

class _TextfieldButtonState extends State<Customtextfield> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: widget.textController,
          decoration: InputDecoration(
            hintText: widget.hintText,
            filled: true,
            fillColor: const Color.fromRGBO(211, 211, 211, 1),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color.fromRGBO(211, 211, 211, 1)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
