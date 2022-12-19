import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key,
      required this.question,
      });
      
  final String question;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      //child: Text('Question ($indexAction+1)/$totalQuestions: $question'),
      child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "$question",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              width: 400,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 42, 130, 148),
              ),
    );
  }
}
