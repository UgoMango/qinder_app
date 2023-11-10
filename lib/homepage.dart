import 'package:flutter/material.dart';
import 'package:qinder_app/setting_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 240, 239),
        title: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Image.asset(
            'assets/image/quinderlogoS2.png',
            height: 140,
            width: 140,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //add to Text Hallo $username,
            const Text(
              'Hallo',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            const Text(
              'Willkommen zurück.',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            SizedBox(height: size.height * 0.1),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SettingsPage(),
                    ),
                  );
                },
                child: const Text(
                  'Einstellungen',
                ),
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {},
                child: const Text(
                  'Profil',
                ),
              ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: () {},
                child: const Text(
                  'mailbox',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
