import 'package:flutter/material.dart';
import 'package:project10days/screens/welcome_screen.dart';

class GoToReadingApp extends StatelessWidget {
  const GoToReadingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()));
          },
          child: const Text(
            'Go to book store',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
