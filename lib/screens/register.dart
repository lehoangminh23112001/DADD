//import 'dart:ui';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dadd/screens/login.dart';
//import 'package:google_fonts/google_fonts.dart';

//import 'myhome.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool isHide = true;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    //final confirmPasswordController = TextEditingController();
    // final _auth = FirebaseAuth.instance;
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
            // Padding(
            //   padding: const EdgeInsets.all(40.0),
            //   child: Container(
            //       width: 70,
            //       height: 70,
            //       padding: EdgeInsets.all(15),
            //       decoration:
            //           BoxDecoration(shape: BoxShape.circle, color: Colors.green
            //               //children Image.asset('../img/user.png'),
            //               ),
            //       child: CircleAvatar()),
            // ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/logo.png"))),
            ),
            // Stack(
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
            Padding(
              //username
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: TextField(
                controller: emailController,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
                decoration: InputDecoration(
                    labelText: "UserName",
                    labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 38, 38, 44),
                        fontSize: 15)),
              ),
            ),
            Padding(
              //password
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: <Widget>[
                  TextField(
                    controller: passwordController,
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
            // Padding(
            //   //confirm password
            //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            //   child: Stack(
            //     alignment: AlignmentDirectional.centerEnd,
            //     children: <Widget>[
            //       TextField(
            //         controller: confirmPasswordController,
            //         style: TextStyle(
            //           fontSize: 18,
            //           color: Colors.green,
            //         ),
            //         obscureText: true,
            //         decoration: InputDecoration(
            //             labelText: "Confirm Password",
            //             labelStyle: TextStyle(
            //                 fontWeight: FontWeight.bold,
            //                 color: Color.fromARGB(255, 38, 38, 44),
            //                 fontSize: 15)),
            //       ),
            //       Text(
            //         "Show",
            //         style: TextStyle(
            //             color: Colors.orange[600],
            //             fontWeight: FontWeight.bold,
            //             fontSize: 15),
            //       )
            //     ],
            //   ),
            // ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                // onPressed: () async {
                //   if (emailController.text.isEmpty ||
                //       passWordController.text.isEmpty ||
                //       confirmPasswordController.text.isEmpty) {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //       const SnackBar(
                //         content: Text("Invalid information"),
                //       ),
                //     );
                //   } else if (passWordController.text !=
                //       confirmPasswordController.text) {
                //     ScaffoldMessenger.of(context).showSnackBar(
                //       const SnackBar(
                //         content: Text("Confirm Password failed"),
                //       ),
                //     );
                //   } else {
                //     try {
                //       final NewUser = _auth.createUserWithEmailAndPassword(
                //           email: emailController.text,
                //           password: passWordController.text);

                //       Map<String, dynamic> data = {
                //         "Coin": 0,
                //         "email": emailController.text,
                //         "name": emailController.text,
                //         "password": passWordController.text
                //       };
                //       FirebaseFirestore.instance.collection("users").add(data);
                //       if (NewUser != null) {
                //         Navigator.pop(context, 'Successfull!');
                //       } else {
                //         ScaffoldMessenger.of(context).showSnackBar(
                //           const SnackBar(
                //             content: Text("Account error"),
                //           ),
                //         );
                //       }
                //     } catch (e) {
                //       final snackBar =
                //           SnackBar(content: Text('Error!'));
                //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
                //     }
                //   }
                // },
                onPressed: () {
                  if (emailController.text.trim() == '' ||
                        passwordController.text.trim() == '') {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Row(
                              children: [
                                Icon(Icons.warning),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Đăng ký"),
                              ],
                            ),
                            content: Text(
                              "Đăng ký thất bại",
                            ),
                            actions: [
                              TextButton(
                                onPressed: (() => Navigator.pop(context)),
                                child: Text("Ok"),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (emailController.text.trim() == "nhom12@gmail.com" && 
                        passwordController.text.trim()=="123456") {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Row(
                              children: [
                                Icon(Icons.info),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Đăng ký"),
                              ],
                            ),
                            content: Text(
                              "Chúc mừng bạn đã đăng ký thành công",
                            ),
                            actions: [
                              TextButton(
                                onPressed: (() => Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ),
                                    )),
                                child: Text("Ok"),
                              ),
                            ],
                          );
                        },
                      );
                    } else if (emailController.text.trim() != "nhom12@gmail.com" ) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Row(
                              children: [
                                Icon(Icons.warning),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text("Đăng ký"),
                              ],
                            ),
                            content: Text(
                              "Đăng ký thất bại",
                            ),
                            actions: [
                              TextButton(
                                onPressed: (() => Navigator.pop(context)),
                                child: Text("Ok"),
                              ),
                            ],
                          );
                        },
                      );
                    } 
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
