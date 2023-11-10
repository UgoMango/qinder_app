import 'package:flutter/material.dart';
import 'package:qinder_app/core/customtextfieldemail.dart';
import 'package:qinder_app/core/customtextfieldpasswort.dart';

class RegistrierungsPage extends StatefulWidget {
  const RegistrierungsPage({super.key});

  @override
  State<RegistrierungsPage> createState() => _RegistrierungsPageState();
}

class _RegistrierungsPageState extends State<RegistrierungsPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwortcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
          child: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Center(
                        child: Image.asset(
                      'assets/image/qinderlogo3.png',
                      height: 200,
                      width: 200,
                    )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Registrierung',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Customtextemail(
                          hintText: 'e-Mail', textController: _emailcontroller),
                      const SizedBox(height: 12),
                      Customtextpasswort(
                          hintText: 'Passwort',
                          textController: _passwortcontroller),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text('Eingaben Wiederholt Eingeben:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal)),
                      const SizedBox(height: 12),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        // Firebase Signin Methode
                        Navigator.pushNamed(context, '/home');
                      },
                      child: const Text("Bestätigen")),
                  const SizedBox(
                    height: 10,
                  ),
                ]),
          ),
        ),
      )),
    );
  }
}
