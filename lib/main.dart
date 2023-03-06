import 'package:flutter/material.dart';
import 'package:luminous_nexus/auth.dart';
import 'package:luminous_nexus/screens/home_screen.dart';
import 'package:luminous_nexus/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:luminous_nexus/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      //home: const Auth(),
      routes: {
        '/': (context) => const Auth(),
        'homeScreen': (context) => const HomeScreen(),
        'signupScreen': (context) => const SignupScreen(),
        'loginScreen': (context) => const LoginScreen(),
      },
    );
  }
}
