import 'package:flutter/material.dart';

import '../screens/login.dart';
import '../screens/topic.dart';

class AnswerQuestionWidget extends StatelessWidget {
  const AnswerQuestionWidget(
      {super.key,
      required this.aswq1,
      required this.aswq2,
      required this.aswq3,
      required this.aswq4,
      });
      
  final String aswq1;
  final String aswq2;
  final String aswq3;
  final String aswq4;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      //child: Text('Question ($indexAction+1)/$totalQuestions: $question'),
      //
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color.fromARGB(255, 57, 172, 128),
                minWidth: 500,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Topic()),
                  );
                },
                child: Text('$aswq1',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color.fromARGB(255, 54, 147, 109),
                minWidth: 500,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text('$aswq2',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color.fromARGB(255, 41, 126, 92),
                minWidth: 500,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text('$aswq3',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Color.fromARGB(255, 34, 100, 74),
                minWidth: 500,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text('$aswq4',style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),),
              ),
            ),
        ],
      ),
    );
  }
}
