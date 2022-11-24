import 'package:flutter/material.dart';
import 'package:project10days/project10d/welcome_screen.dart';

class GoToReadingApp extends StatelessWidget {
  const GoToReadingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(child:
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const WelcomeScreen()));
            },
                child:   const Text('Go to book store',style: TextStyle(fontSize: 20),),)
        ),
      ),
    );
  }
}
