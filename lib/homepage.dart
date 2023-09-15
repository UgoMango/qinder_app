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
        backgroundColor: Colors.deepOrange,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hallo, Ugo!',
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
                  primary: Colors.deepOrange,
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
