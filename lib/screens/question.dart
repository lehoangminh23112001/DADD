import 'package:dadd/constants.dart';
import 'package:dadd/models/db_connect.dart';
import 'package:dadd/models/question_model.dart';
import 'package:dadd/widgets/next_button.dart';
import 'package:dadd/widgets/option_card.dart';
import 'package:dadd/widgets/titlequestion_widget.dart';
import 'package:flutter/material.dart';
import 'package:dadd/widgets/question_widget.dart';
import '../widgets/result_box.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _questioncreenState();
}

class _questioncreenState extends State<QuestionScreen> {
  //create an object for dbconn
  //var db = DBconnect();
  List<Question> _question = [
    Question(
      id: '10',
      title:
          'Cho 3 chất glucozo, axit axetic, glixerol. Để phân biệt 3 chất trên chỉ cần dùng 2 hóa chất là ?',
      options: {
        'Dung dịch Na2CO3 và Na': false,
        'Ag/NH3 và quỳ tím': false,
        'Dd NaHCO3 và dd AgNO3': true,
        'Quỳ tím và Na': false
      },
    ),
    Question(
      id: '11',
      title: 'What is 10 + 20?',
      options: {'20': false, '30': true, '40': false, '100': false},
    ),
  ];
  // late Future _question;
  //  Future<List<Question>> getData() async {
  //   return db.fetchQuestions();
  // }

  // @override
  // void initState() {
  //   _question = getData();
  //   super.initState();
  // }

  int index = 0;
  int coin = 0;
  int point = 0;

  //create a boolean value to check if the user has clicked
  bool isPressed = false;
  // create a function for changing color
  void checkAnswerAndUpdate(bool isCorrect) {
    if (isCorrect && !isPressed) {
      point++;
      coin++;
    }
    setState(() {
      isPressed = true;
    });
  }

  //Start over function
  void startOver() {
    setState(() {
      index = 0;
      point = 0;
      isPressed = false;
    });
    Navigator.pop(context);
  }

  //create a function to display the next question
  void nextQuestion() {
    if (index == _question.length - 1)
      showDialog(
        context: context,
        barrierDismissible:
            false, // disable the dissmis function on clicking outside of the box
        builder: (ctx) => ResultBox(
          result: point,
          questionLength: _question.length,
          onPressed: startOver,
        ),
      );
    else {
      if (isPressed) {
        setState(() {
          index++; // when the index will change, rebuild the app.
          isPressed = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Please select any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 20.0),
        ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background11.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              //LOGO
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
              height: 20,
            ),
            TitleQuestionWidget(
                coin: coin,
                point: point,
                indexAction: index,
                totalQuestions: _question.length),
            // Container(
            //   child: Padding(
            //     //children
            //     padding: const EdgeInsets.all(12.0),
            //     child: Text("Coin: 1000\nPoint: 0\nQuestion: 1/20",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 20,
            //             fontWeight: FontWeight.bold)),
            //   ),
            //   width: 400,
            //   height: 125,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Color.fromARGB(255, 55, 232, 245),
            //   ),
            // ),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 20,
            ),
            QuestionWidget(question: _question[index].title),
            // Container(
            //   child: Padding(
            //     padding: const EdgeInsets.all(12.0),
            //     child: Text(
            //       "Cho 3 chất glucozo, axit axetic, glixerol. Để phân biệt 3 chất trên chỉ cần dùng 2 hóa chất là",
            //       style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            //   width: 400,
            //   height: 125,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(10),
            //     color: Color.fromARGB(255, 42, 130, 148),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            //AnswerQuestionWidget(aswq1: aswq1, aswq2: aswq2, aswq3: aswq3, aswq4: aswq4)
            for (int i = 0; i < _question[index].options.length; i++)
              GestureDetector(
                onTap: () => checkAnswerAndUpdate(
                    _question[index].options.values.toList()[i]),
                child: OptionCard(
                  option: _question[index].options.keys.toList()[i],
                  color: isPressed
                      ? _question[index].options.values.toList()[i] == true
                          ? correct
                          : incorrect
                      : neutral,
                ),
              ),
            //Container(
            // padding: EdgeInsets.all(15),
            // child: MaterialButton(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   color: Color.fromARGB(255, 57, 172, 128),
            //   minWidth: 500,
            //   height: 50,
            //   onPressed: () {
            //     nextQuestion();
            //   },
            //   // onPressed: () {
            //   //   Navigator.push(
            //   //     context,
            //   //     MaterialPageRoute(builder: (context) => Topic()),
            //   //   );
            //   // },
            //   child: Text(
            //     _question[index].options.keys.toList()[i],
            //     style: TextStyle(
            //         fontSize: 16,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.white),
            //   ),
            // ),
            //),
            // Container(
            //   padding: EdgeInsets.all(15),
            //   child: MaterialButton(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     color: Color.fromARGB(255, 54, 147, 109),
            //     minWidth: 500,
            //     height: 50,
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => Login()),
            //       );
            //     },
            //     child: Text(
            //       'Ag/NH3 và quỳ tím',
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.all(15),
            //   child: MaterialButton(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     color: Color.fromARGB(255, 41, 126, 92),
            //     minWidth: 500,
            //     height: 50,
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => Login()),
            //       );
            //     },
            //     child: Text(
            //       'Dd NaHCO3 và dd AgNO3',
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            // Container(
            //   padding: EdgeInsets.all(15),
            //   child: MaterialButton(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     color: Color.fromARGB(255, 34, 100, 74),
            //     minWidth: 500,
            //     height: 50,
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => Login()),
            //       );
            //     },
            //     child: Text(
            //       'Quỳ tím và Na',
            //       style: TextStyle(
            //           fontSize: 16,
            //           fontWeight: FontWeight.bold,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 300,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 36, 142, 229).withOpacity(0.8),
        ),
        child: nextButton(
           nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
