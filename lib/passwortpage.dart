import 'package:flutter/material.dart';
import 'package:qinder_app/core/customtextfieldpasswort.dart';

class Passwortvergessenpage extends StatefulWidget {
  const Passwortvergessenpage({super.key});

  @override
  State<Passwortvergessenpage> createState() => _PasswortvergessenpageState();
}

class _PasswortvergessenpageState extends State<Passwortvergessenpage> {
  final TextEditingController _passwortcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PasswortPage'),
        ),
        body: Center(
            child: SafeArea(
                child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Image.asset(
                                  'assets/image/Group 5.png',
                                  height: 150,
                                  width: 150,
                                )),
                            Customtextpasswort(
                                hintText: 'neues Passwort eingeben',
                                textController: _passwortcontroller),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue, width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Passwort zurücksetzen',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline),
                                        )),
                                  ),
                                ]),
                          ]),
                    )))));
  }
}
