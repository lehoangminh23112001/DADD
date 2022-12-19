import 'package:dadd/constants.dart';
import 'package:flutter/material.dart';

class ResultBox extends StatelessWidget {
  const ResultBox(
      {super.key, required this.result, required this.questionLength, required this.onPressed});
  final int result;
  final int questionLength;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: background,
      content: Padding(
        padding: EdgeInsets.all(70.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Result',
              style: TextStyle(
                  color: neutral, fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            CircleAvatar(
                child: Text(
                  '$result/$questionLength',
                  style: TextStyle(fontSize: 30.0),
                ),
                radius: 70.0,
                backgroundColor: result == questionLength / 2
                    ? Colors.yellow // result = length/2
                    : result < questionLength / 2
                        ? incorrect //result is more than half
                        : correct //result is less than half
                ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              result == questionLength / 2
                  ? 'Almost there' // result = length/2
                  : result < questionLength / 2
                      ? 'Try again' //result is more than half
                      : 'Great!', //result is less than half
              style: TextStyle(
                color: neutral,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            GestureDetector(
              onTap: onPressed,
              child: Text(
                'Start Over',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
