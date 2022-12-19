import 'package:dadd/models/db_connect.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dadd/screens/register.dart';

// void main() async {
//    WidgetsFlutterBinding.ensureInitialized();
//    await Firebase.initializeApp();
//    runApp(MyApp());
// }
void main() {
  var db = DBconnect();
  // db.addQuestion(Question(
  //     id: '20',
  //     title: 'What is 20 x 10',
  //     options: {'100': false, '200': true, '300': false, '400': false}));
  db.fetchQuestions();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}
