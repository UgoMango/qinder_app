import 'package:flutter/material.dart';

class ArbeitgeberNehmerPage extends StatelessWidget {
  const ArbeitgeberNehmerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/AgProfilPage');
                  },
                  child: const Text('Arbeitgeber')),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/AnProfilpage');
                  },
                  child: const Text('Arbeitnehmer')),
            )
          ],
        )));
  }
}
