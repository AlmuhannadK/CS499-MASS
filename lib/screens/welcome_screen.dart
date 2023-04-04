import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  height: 180,
                  child: Image.asset('images/LMNX logo.jpg'),
                ),
                Text(
                  'Luminous Nexus',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MyButton(
              color: Colors.purple[600]!,
              title: 'Sign in',
              onPressed: () {},
            ),
            MyButton(
              color: Colors.blue[200]!,
              title: 'Register',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
