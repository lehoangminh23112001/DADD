import 'package:flutter/material.dart';

class nextButton extends StatelessWidget {
  const nextButton({super.key, required this.nextQuestion});
  final VoidCallback nextQuestion;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        padding: EdgeInsets.all(15),
                child: Text('Next Question',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
      ),
    );
  }
}