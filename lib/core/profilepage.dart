import 'package:flutter/material.dart';
import 'package:qinder_app/core/appbar_widget.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [],
        ));
  }
}
