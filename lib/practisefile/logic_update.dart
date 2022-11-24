// // import 'dart:convert';
// //
// // // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/services.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// //
// // import 'db_helper.dart';
// // import 'model_data.dart';
// //
// //
// // class CartProvider_1 with ChangeNotifier {
// //   DBHelper db = DBHelper();
// //
// //   // int _counter = 0;
// //   // int get counter => _counter;
// //   //
// //   // int _quantity = 1;
// //   // int get quantity => _quantity;
// //
// //   double _totalRating = 0.0;
// //
// //   double get totalRating => _totalRating;
// //
// //   bool istrue = false;
// //   List<ModelData> ratee = [];
// //   late Future<List<ModelData>> _ratee;
// //
// //   Future<List<ModelData>> get rate => _ratee;
// //
// //   Future<List<ModelData>> getData() async {
// //     ratee = await db.getCartList();
// //     notifyListeners();
// //     return ratee;
// //   }
// //
// //   void _setPrefItems() async {
// //     SharedPreferences prefs = await SharedPreferences.getInstance();
// //     //   // prefs.setInt("cart_items", _counter);
// //     //   // prefs.setInt("item_quantity", _quantity);
// //     prefs.setDouble("total_Rating", _totalRating);
// //     notifyListeners();
// //   }
// //
// //   void _getPrefItems() async {
// //     SharedPreferences prefs = await SharedPreferences.getInstance();
// //     _totalRating = prefs.getDouble("ratee") ?? 0.0;
// //     //   // _quantity = prefs.getInt("item_quantity") ?? 0;
// //     //   // _totalPrice = prefs.getDouble("total_price") ?? 0.0;
// //     notifyListeners();
// //   }
//
// //========================priceCounter================
// //   void addCounter() {
// //     _counter++;
// //     _setPrefItems();
// //     notifyListeners();
// //   }
//
//   // void removeCounter() {
//   //   _counter--;
//   //   _setPrefItems();
//   //   notifyListeners();
//   // }
//   //
//   // int getCounter() {
//   //   _getPrefItems();
//   //   return _counter;
//   // }
//
//
//   // ========================totalPriceCounter================
// //   double addTotalRating(int isSelected) {
// //     _totalRating = _totalRating + isSelected;
// //     print(_totalRating);
// //
// //     _setPrefItems();
// //     notifyListeners();
// //     return _totalRating;
// //   }
// // }
//
//   // void removeTotalPrice(double productPrice) {
//   //   _totalPrice = _totalPrice - productPrice;
//   //   _setPrefItems();
//   //   notifyListeners();
//   // }
//
//
//   // double getTotalPrice() {
//   //   _getPrefItems();
//   //   return _totalPrice;
//   // }
// //=====================================
//
// //   List<ModelData>? _dataa=[]; //when the list of object doesn't have name  {[....]}
// //   List<ModelData>? get dataa => _dataa;
// //   Future<List<ModelData>?> loadJsonData() async {
// //     final String jsonText = await rootBundle.loadString("assets/jsondata.json");
// //     final newData = json.decode(jsonText);
// //     _dataa = (newData["data"] as List)
// //         .map((e) => ModelData.fromJson(e))
// //         .toList();
// //     // _dataa?.addAll(List<ModelData>.from(newData.map((model) => ModelData.fromJson(model))));
// //     print(_dataa);
// // istrue=true;
// //     return _dataa ;
// //   }
// // }
// import 'package:flutter/widgets.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class First with ChangeNotifier{
//   int _rate=0;
//   int get rat=>_rate;
//   Future <void> getIntValuesSF() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     _rate = (prefs.getInt('counter') ?? 0);
//     prefs.setInt('rate', _rate!);
//     notifyListeners();
//   }
//
// }