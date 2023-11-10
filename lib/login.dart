import 'package:flutter/material.dart';
import 'package:qinder_app/core/customtextfieldemail.dart';
import 'package:qinder_app/core/customtextfieldpasswort.dart';
// ignore: unused_import
import 'package:google_sign_in/google_sign_in.dart';
// ignore: unused_import
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwortcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
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
                    height: 210,
                    width: 210,
                  )),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Hallo',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Customtextemail(
                          hintText: 'e-Mail', textController: _emailcontroller),
                      Customtextpasswort(
                          hintText: 'Passwort',
                          textController: _passwortcontroller),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text('Anmelden mit:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal)),
                      const SizedBox(height: 12),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Center(
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'assets/image/google_Logo.png',
                                      height: 50,
                                      width: 50,
                                    )),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Center(
                                  child: GestureDetector(
                                      onTap: () {},
                                      child: Image.asset(
                                        'assets/image/Apple_Logo.png',
                                        height: 40,
                                        width: 40,
                                      )),
                                )),
                          ]),
                    ]),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      // Firebase Signin Methode
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text("Login")),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/agan');
                        debugPrint('Hello');
                      },
                      child: const Text('Registrieren ?')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Passwort');
                      },
                      child: const Text('Passwort vergessen')),
                )
              ]),
        ))));
  }
}
