import 'package:flutter/material.dart';
import 'package:qinder_app/arbeitgeberprofil.dart';
import 'package:qinder_app/arbeitnehmer.dart';
import 'package:qinder_app/homepage.dart';
import 'package:qinder_app/login.dart';
import 'package:qinder_app/logopage.dart';
import 'package:qinder_app/passwortpage.dart';
import 'package:qinder_app/presentation/selectionpage.dart';
import 'package:qinder_app/registrierung.dart';
import 'package:qinder_app/setting_page.dart';
import 'package:qinder_app/push.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/logo',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Qinder'),
        '/settings': (context) => const SettingsPage(),
        '/settings/pushes': (context) => const PushSettingsPage(),
        '/logo': (context) => const LogoPage(),
        '/login': (context) => const Loginpage(),
        '/agan': (context) => const ArbeitgeberNehmerPage(),
        '/Passwort': (context) => const Passwortvergessenpage(),
        '/Registrierung': (context) => const RegistrierungsPage(),
        '/AgProfilPage': (context) => const ArbeitgeberProfilPage(),
        '/AnProfilpage': (context) => const ArbeitnehmerProfilPage(),
      },
    );
  }
}
