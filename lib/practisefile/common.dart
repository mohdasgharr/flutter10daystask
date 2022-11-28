import 'package:flutter/material.dart';

class Common extends StatelessWidget {
  const Common({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
        decoration:InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.pink),
          ),
        )
    );
  }
}
