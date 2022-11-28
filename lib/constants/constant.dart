import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Constant with ChangeNotifier {
   int? counterr=0;
   int? count1;
   int? count2;
   int? count3;
   int? count4;
   int? count5;
  Future <void> getIntValuesSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    counterr = (prefs.getInt('counterr') ?? 0);
    prefs.setInt('counterr', counterr!);
    notifyListeners();
  }

Future <void> incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  counterr =((prefs.getInt('counterr') ?? 0)+1);
  prefs.setInt('counterr', counterr!);
  notifyListeners();
}


  Future <void> getIntValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    count1 = (prefs.getInt('count1') ?? 0);
    prefs.setInt('count1', count1!);
    notifyListeners();
  }

  Future <void> incrementCounter1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    count1 =((prefs.getInt('count1') ?? 0)+1);
    prefs.setInt('count1', count1!);
    notifyListeners();
  }

  Future <void> getIntVal() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    count2 = (prefs.getInt('count2') ?? 0);
    prefs.setInt('count2', count2!);
    notifyListeners();
  }

  Future <void> incrementCounter2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    count2 =((prefs.getInt('count2') ?? 0)+1);
    prefs.setInt('count2', count2!);
    notifyListeners();
  }

   Future <void> getIntValuess() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     count3 = (prefs.getInt('count3') ?? 0);
     prefs.setInt('count3', count3!);
     notifyListeners();
   }

   Future <void> incrementCounter3() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     count3 =((prefs.getInt('count3') ?? 0)+1);
     prefs.setInt('count3', count3!);
     notifyListeners();
   }

   Future <void> getIntValuesSF4() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     count4 = (prefs.getInt('count4') ?? 0);
     prefs.setInt('count4', count4!);
     notifyListeners();
   }

   Future <void> incrementCounter4() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     count4 =((prefs.getInt('count4') ?? 0)+1);
     prefs.setInt('count4', count4!);
     notifyListeners();
   }
   Future <void> getIntValuesSF5() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     count5 = (prefs.getInt('count5') ?? 0);
     prefs.setInt('count5', count5!);
     notifyListeners();
   }

   Future <void> incrementCounter5() async {
     SharedPreferences prefs = await SharedPreferences.getInstance();
     count5 =((prefs.getInt('count5') ?? 0)+1);
     prefs.setInt('count5', count5!);
     notifyListeners();
   }
}