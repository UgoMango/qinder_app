import 'package:flutter/material.dart';

enum Sprachen { deutsch, englisch }

class PushSettingsPage extends StatefulWidget {
  const PushSettingsPage({super.key});
  @override
  State<PushSettingsPage> createState() => _PushSettingsPageState();
}

class _PushSettingsPageState extends State<PushSettingsPage> {
  Sprachen? character = Sprachen.deutsch;
  bool isGerman = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Pushes',
        ),
      ),
      body: Center(
        child: Center(
          child: Column(
            children: [
              ListTile(
                title: const Text('Deutsch'),
                leading: Radio<Sprachen>(
                  value: Sprachen.deutsch,
                  groupValue: character,
                  onChanged: (Sprachen? value) {
                    setState(() {
                      isGerman = true;
                      character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Englisch'),
                leading: Radio<Sprachen>(
                  value: Sprachen.englisch,
                  groupValue: character,
                  onChanged: (Sprachen? value) {
                    setState(() {
                      isGerman = false;
                      character = value;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop<List>(
                          context,
                          [true, isGerman],
                        );
                      },
                      child: const Text('Ja'),
                    ),
                  ),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop<List>(
                          context,
                          [true, isGerman],
                        );
                      },
                      child: const Text('Nein'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
