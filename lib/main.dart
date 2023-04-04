import 'package:flutter/material.dart';
import 'package:luminous_nexus/screens/registration_screen.dart';
import 'package:luminous_nexus/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing LMNX Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrationScreen(),
    );
  }
}
