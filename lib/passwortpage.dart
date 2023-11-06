import 'package:flutter/material.dart';

class PasswortVergessenPage extends StatefulWidget {
  const PasswortVergessenPage({super.key});

  @override
  State<PasswortVergessenPage> createState() => _PasswortVergessenPageState();
}

class _PasswortVergessenPageState extends State<PasswortVergessenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PasswortPage'),
        ),
        body: const Center(
          Children: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ));
  }
}
