import 'package:flutter/material.dart';
import 'package:qinder_app/homepage.dart';
import 'package:qinder_app/logopage.dart';
import 'package:qinder_app/setting_page.dart';
import 'push.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/logo',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Qinder'),
        '/settings': (context) => const SettingsPage(),
        '/settings/pushes': (context) => const PushSettingsPage(),
        '/logo': (context) => const LogoPage(),
        '/login': (context) => const LogoPage(),
      },
    );
  }
}
