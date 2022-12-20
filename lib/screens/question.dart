import 'package:dadd/constants.dart';

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
      id: '1',
      title: 'Nhận định nào sau đây không đúng về kim loại kiềm ?',
      options: {
        'Đều có cấu tạo mạng tinh thể giống nhau: lập phương tâm khối.': false,
        'Dễ bị oxi hóa.': false,
        'Năng lượng ion hóa thứ nhất của các nguyên tử kim loại kiềm thấp hơn so với các nguyên tố khác trong cùng chu kì.':
            false,
        'Là những nguyên tố mà nguyên tử có 1 e ở phân lớp p.': true
      },
    ),
    Question(
      id: '2',
      title:
          'Khi điều chế Na, người ta điện phân nóng chảy NaCl với anot làm bằng:',
      options: {'thép': false, 'nhôm': false, 'than chì': true, 'Magie': false},
    ),
    Question(
      id: '3',
      title:
          'Khi cho kim loại Na vào dung dịch CuSO4 thì sẽ xảy ra hiện tượng nào sau đây ?',
      options: {
        'Ban đầu có xuất hiện kết tủa xanh, sau đó kết tủa tan ra, dung dịch trong suốt.':
            false,
        'Ban đầu có sủi bọt khí, sau đó xuất hiện kết tủa xanh.': true,
        'Ban đầu có sủi bọt khí, sau đó có tạo kết tủa xanh, rồi kết tủa tan ra, dung dịch trong suốt.':
            false,
        'Chỉ có sủi bọt khí.': false
      },
    ),
    Question(
      id: '4',
      title:
          'Phương pháp điều chế kim loại kiềm là:',
      options: {
        'Khử oxit kim loại kiềm bằng chất khử CO.':
            false,
        'Điện phân nóng chảy muối halogenua hoặc hiđroxit của chúng.': true,
        'Điện phân dung dịch muối halogenua.':
            false,
        'Cho Al tác dụng với dung dịch muối của kim loại kiềm .': false
      },
    ),
    Question(
      id: '5',
      title:
          'Trong chế tạo ruột phích người ta thường dùng phương pháp nào sau đây:',
      options: {
        'Cho axetilen tác dụng với dung dịch AgNO3/NH3':
            false,
        'Cho anđehit fomic tác dụng với dung dịch AgNO3/NH3': false,
        'Cho axit fomic tác dụng với dung dịch AgNO3/NH3':
            false,
        ' Cho glucozơ tác dụng với dung dịch AgNO3/NH3': true
      },
    ),
    Question(
      id: '6',
      title:
          'Khi thuỷ phân saccarozo, sản phẩm thu được là',
      options: {
        'glucozo và fructozo.':
            true,
        'glucozo.': false,
        'fructozo.':
            false,
        'tinh bột.': false
      },
    ),
    Question(
      id: '7',
      title:
          'Nhận xét nào dưới đây là đúng khi so sánh giữa xenlulozo và tinh bột ?',
      options: {
        'Xenlulozo có phân tử khối lớn hơn nhiều so với tinh bột.':
            true,
        'Xenlulozơ và tinh bột khi cháy đều thu được số mol CO2 bằng số mol H2O.': false,
        'Xenlulozơ có cấu trúc phân nhánh, còn tinh bột có cấu trúc thẳng.':
            false,
        'Xenlulozo và tinh bột đều tan trong nước nóng.': false
      },
    ),
    Question(
      id: '8',
      title:
          'Có thể phân biệt xenlulozơ với tinh bột nhờ phản ứng',
      options: {
        'với axit H5SO4.':
            false,
        'với kiềm.': false,
        'với dung dịch iot':
            true,
        'thuỷ phân': false
      },
    ),
    Question(
      id: '9',
      title:
          'Nhóm chất đều tham gia phản ứng thuỷ phân là',
      options: {
        'saccarozơ, fructozơ, glucozơ':
            false,
        'saccarozơ, fructozơ, xenlulozơ.': false,
        'saccarozơ, tinh bột, xenlulozơ':
            true,
        'saccarozơ, glucozơ, tinh bột.': false
      },
    ),
    Question(
      id: '10',
      title:
          'Este có mùi chuối chín là',
      options: {
        'isoamyl axetat.':
            true,
        'etyl butirat.': false,
        'benzyl axetat.':
            false,
        'geranyl axetat.': false
      },
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
      coin += 100;
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
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/logo.png"))),
            ),
            // Stack(
            //   //LOGO
            //   children: <Widget>[
            //     // Stroked text as border.
            //     Text(
            //       'Quiz & Quick',
            //       style: TextStyle(
            //         fontSize: 40,
            //         foreground: Paint()
            //           ..style = PaintingStyle.stroke
            //           ..strokeWidth = 6
            //           ..color = Colors.blue[700]!,
            //       ),
            //     ),
            //     // Solid text as fill.
            //     Text(
            //       'Quiz & Quick',
            //       style: TextStyle(
            //         fontSize: 40,
            //         color: Colors.yellow[300],
            //       ),
            //     ),
            //   ],
            // ),
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
        width: 325,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 36, 142, 229).withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: nextButton(
          nextQuestion: nextQuestion,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
