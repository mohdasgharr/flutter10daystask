import 'package:flutter/material.dart';
import 'package:project10days/constants/constant.dart';
import 'package:project10days/screens/go_to_reading_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider(
    create: (_) => Constant(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const GoToReadingApp(),
    );
  }
}
