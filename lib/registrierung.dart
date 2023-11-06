import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:qinder_app/core/customtextfield.dart';

class RegistrierungsPage extends StatelessWidget {
  const RegistrierungsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Registrierung',
                        style: TextStyle(
                          fontSize: 20,
                        )),
                    // Customtextfield(hintText: 'e-Mail', textController: () {}),
                    // SizedBox(height: 12),
                    // Customtextfield(
                    //     hintText: 'Passwort', textController: () {}),
                    SizedBox(
                      height: 12,
                    ),
                    Text('Eingaben Wiederholt Eingeben:',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal)),
                    SizedBox(height: 12),
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
      )),
    );
  }
}
