import 'package:flutter/material.dart';

class AppBarLogo extends StatefulWidget {
  final String text;

  final Image qinderlogo;

  final Icon qindericon;
  const AppBarLogo(
      {super.key,
      required this.text,
      required this.qinderlogo,
      required this.qindericon});

  @override
  State<AppBarLogo> createState() => _AppBarLogoState();
}

class _AppBarLogoState extends State<AppBarLogo> {
  @override
  Widget build(BuildContext context) {
    return (Placeholder(
      child: AppBar(),
    ));
  }
}
