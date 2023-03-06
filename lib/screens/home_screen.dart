import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, you\'re signed in!',
              style: GoogleFonts.orbitron(fontSize: 24),
            ),
            Text(
              user.email!,
              style: GoogleFonts.orbitron(fontSize: 24),
            ),
            MaterialButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                color: Color.fromARGB(255, 116, 81, 150),
                child: Text('Sign out')),
          ],
        ),
      ),
    );
  }
}
