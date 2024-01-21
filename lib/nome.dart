// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold (
//       appBar: AppBar(),
//    body: Column(
//     children: [
//       TextButton(onPressed: ()async{
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//         Future<bool> name = prefs.setString('name', 'zahraa');
//         Future<bool> online = prefs.setBool('online', true) ;
//         Future<bool> age = prefs.setInt('age', 31);
//       }, child: const Text('setPrint',style: TextStyle(fontSize: 20))),

//           TextButton(onPressed: ()async{
//         final SharedPreferences prefs = await SharedPreferences.getInstance();
//          String? name = prefs.getString('name');
//         bool? online = prefs.getBool('online');
//         int? age = prefs.getInt('age');
//          print('$name');
//          print('$online');
//          print('$age');
//       }, child: const Text('getPrint',style: TextStyle(fontSize: 20),)), 
//     ],

//    ),

//     );
//   }
// //   // Obtain shared preferences.

// // saveToken(mypassword,userEmail)async{
// // final SharedPreferences prefs = await SharedPreferences.getInstance();
// // // Save an integer value to 'counter' key.
// // await prefs.setInt('id', 10);
// // // Save an boolean value to 'repeat' key.
// // await prefs.setBool('online', true);
// // // Save an double value to 'decimal' key.
// // await prefs.setInt('age', 31);
// // // Save an String value to 'action' key.
// // await prefs.setString('name', 'Start');
// // }
// // readToken(mypassword,userEmail)async{
// //   final SharedPreferences prefs = await SharedPreferences.getInstance();

// // // Try reading data from the 'id' key. If it doesn't exist, returns null.
// // final int? id = prefs.getInt('id');
// // // Try reading data from the 'online' key. If it doesn't exist, returns null.
// // final bool? online = prefs.getBool('online');
// // // Try reading data from the 'age' key. If it doesn't exist, returns null.
// // final double? age = prefs.getDouble('age');
// // // Try reading data from the 'name' key. If it doesn't exist, returns null.
// // final String? name = prefs.getString('name');
// // }

// }