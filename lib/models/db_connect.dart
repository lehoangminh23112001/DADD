import 'package:dadd/models/question_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DBconnect {
  // let's first create  a function to add a question to our database.
// declare the name of the table you want to create and add .json as suffix
  final url = Uri.parse(
      'https://dadd-fa139-default-rtdb.firebaseio.com/questions.json');

  // fetch the data from database
  Future <void> fetchQuestions() async {
    // we got the data from just using this. now let's print it to see what we got.
      http.get(url).then((response) {
      var data = json.decode(response.body);
      print(data);
    });
  }
}
