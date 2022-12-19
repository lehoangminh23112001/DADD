//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dadd/screens/question.dart';

//import '../models/question_model.dart';

class Topic extends StatelessWidget {
  const Topic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(60, 100, 50, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background13.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                // Stroked text as border.
                Text(
                  'Quiz & Quick',
                  style: TextStyle(
                    fontSize: 40,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue[700]!,
                  ),
                ),
                // Solid text as fill.
                Text(
                  'Quiz & Quick',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.yellow[300],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => QuestionScreen()),
                    );
                  },
                  child: Container(
                    child: Center(
                      child: Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Chemist',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 23, 24, 24),
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Chemist',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 249, 252, 250),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: 125,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 23, 24, 24),
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'History',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 246, 250, 248),
                            ),
                          ),
                        ],
                      ),
                    ),
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Universe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 23, 24, 24),
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Universe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 249, 252, 250),
                            ),
                          ),
                        ],
                      ),
                    ),
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Sport',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 23, 24, 24),
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Sport',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 249, 252, 250),
                            ),
                          ),
                        ],
                      ),
                    ),
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Music',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 23, 24, 24),
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Music',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 249, 252, 250),
                            ),
                          ),
                        ],
                      ),
                    ),
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 34, 250, 246),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            'Other',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 6
                                ..color = Color.fromARGB(255, 23, 24, 24),
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            'Other',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 249, 252, 250),
                            ),
                          ),
                        ],
                      ),
                    ),
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
