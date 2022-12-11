//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:dadd/screens/login.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'myhome.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool isHide = true;
    final userNameController = TextEditingController();
    final passWordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background14.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Container(
                  width: 70,
                  height: 70,
                  padding: EdgeInsets.all(15),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.green
                          //children Image.asset('../img/user.png'),
                          ),
                  child: CircleAvatar()),
            ),
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
            Padding(
              //username
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                controller: userNameController,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
                decoration: InputDecoration(
                    labelText: "UserName",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 38, 38, 44), fontSize: 15)),
              ),
            ),
            Padding(
              //password
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    controller: passWordController,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                    obscureText: isHide,
                    decoration: InputDecoration(
                      
                        labelText: "Password",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 38, 38, 44),
                            fontSize: 15)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isHide = !isHide;
                      });
                    },
                    child: Text(
                      "Show",
                      style: TextStyle(
                          color: Colors.orange[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              //confirm password
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    controller: confirmPasswordController,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.green,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 38, 38, 44),
                            fontSize: 15)),
                  ),
                  Text(
                    "Show",
                    style: TextStyle(
                        color: Colors.orange[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myhome()),
                  );
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.green,
                minWidth: 500,
                height: 50,
                child: Text(
                  'Regist',
                  style: TextStyle(
                    color: Colors.yellow[300],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.green,
                minWidth: 500,
                height: 50,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Already have an account',
                  style: TextStyle(
                    color: Colors.yellow[300],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
