import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final placeholder = const SizedBox(
    height: 100,
  );
  bool wantsPushes = true;
  TimeOfDay lastChanged = const TimeOfDay(
    hour: 08,
    minute: 20,
  );
  String sprache = "Deutsch";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text(
          'Einstellungen',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Eingestellte Sprache:',
            ),
            Text(
              sprache,
            ),
            placeholder,
            const Text(
              'Möchte Push-Benachrichtigungen:',
            ),
            ElevatedButton(
              onPressed: () async {
                final userAnswer = await Navigator.pushNamed(
                  context,
                  '/settings/pushes',
                ) as List;
                setState(() {
                  wantsPushes = userAnswer[0];
                  lastChanged = TimeOfDay.now();
                  sprache = userAnswer[1] ? 'Deutsch' : 'Englisch';
                });
              },
              child: Text(
                wantsPushes ? 'Ja' : 'Nein',
              ),
            ),
            placeholder,
            const Text(
              'Zuletzt geändert:',
            ),
            Text(
              '${lastChanged.hour}:${lastChanged.minute} Uhr',
            ),
          ],
        ),
      ),
    );
  }
}
