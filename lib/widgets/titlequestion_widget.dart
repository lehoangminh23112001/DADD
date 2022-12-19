import 'package:flutter/material.dart';

class TitleQuestionWidget extends StatelessWidget {
  const TitleQuestionWidget(
      {super.key,
      required this.coin,
      required this.point,
      required this.indexAction,
      required this.totalQuestions});
      
  
  final int indexAction;
  final int totalQuestions;
  final int coin;
  final int point;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      //child: Text('Question ($indexAction+1)/$totalQuestions: $question'),
      child: Padding(
                //children
                padding: const EdgeInsets.all(12.0),
                child: Text('Coin: $coin\nPoint: $point\nQuestion:${indexAction+1}/$totalQuestions',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              width: 400,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 55, 232, 245),
              ),
    );
  }
}
