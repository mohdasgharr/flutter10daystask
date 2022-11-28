import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  var mailController = TextEditingController();
  var passController = TextEditingController();

  @override
  build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Center(
        child: SafeArea(
            child: Column(
              children: [
                TextField(
                  controller: mailController,
                  decoration: const InputDecoration(
                      labelText: 'email',
                      suffixIcon: Icon(Icons.mail_outlined),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: passController,
                  decoration: const InputDecoration(
                    labelText: 'password',
                    suffixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                OutlinedButton.icon(onPressed: () {
                  pageRoute();
                },
                    icon: const Icon(Icons.send_to_mobile_rounded),
                    label: const Text('Login')),
              ],
            )),
      ),
    );
  }

  Future pageRoute() async {
    if (mailController.text.isNotEmpty && passController.text.isNotEmpty) {
      var response = await http.get(
          Uri.parse("https://reqres.in/api/login"),
      //     body: ({
      //   'email': mailController.text,
      //   'password': passController.text,
      // })

      );
      if (response.statusCode == 200) {
        final body=jsonDecode(response.body);
         print(body.toString());
      //   ScaffoldMessenger.of(context).showSnackBar(
      //        SnackBar(content: Text("token: ${ body['password']}")));
      }
      else {
        // print('invalid crendential');
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('invalid  credential ')));
      }
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('blank value found')));
    }
  }
}