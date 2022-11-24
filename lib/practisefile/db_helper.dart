// import 'package:project10d/test/cart_model_1.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart';
// import 'dart:io' as io;
// import 'model_data.dart';
//
// class DBHelper {
//   static Database? _db;
//
//   Future<Database?> get db async {
//     if (_db != null) {
//       return _db!;
//     }
//     _db = await initDatabase();
//     return null;
//   }
//
//   initDatabase() async {
//     io.Directory documentDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentDirectory.path, 'model.db');
//     var db = await openDatabase(
//       path,
//       version: 1,
//       onCreate: _onCreate,
//     );
//     return db;
//   }
//
// // creating database table
//   _onCreate(Database db, int version) async {
//     await db.execute(
//         'CREATE TABLE ratee (page INTEGER PRIMARY KEY AUTOINCREMENT , img TEXT , title TEXT , sub_title TEXT , price Double , auther_name TEXT ,  rate double , )');
//     print('cart created!==============');
//   }
//
// // inserting data into the table
//   Future<ModelData> insert(ModelData ratee) async {
//     var dbClient = await db;
//     await dbClient!.insert('ratee', ratee.toJson());
//     return ratee;
//   }
//
//   // getting all the items in the list from the database
//   Future<List<ModelData>> getCartList() async {
//     var dbClient = await db;
//     final List<Map<String, Object?>> queryResult =
//     await dbClient!.query('ratee');
//     return queryResult.map((e) => ModelData.fromJson(e)).toList();
//   }
//
//   Future<int> upDateQuantity(ModelData cart) async {
//     var dbClient = await db;
//     return await dbClient!
//         .update(
//         'ratee', ratee.toJson(), where: 'id = ?', whereArgs: [ratee.ra]);
//   }
//
// }
// deleting an item from the cart screen
//   Future<int> delete(int id) async {
//     var dbClient = await db;
//     return await dbClient!.delete('cart', where: 'id = ?', whereArgs: [id]);
//   }

