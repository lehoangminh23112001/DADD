//import 'dart:ui';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:dadd/screens/login.dart';
import 'package:dadd/screens/register.dart';
import 'package:flutter/material.dart';
//import 'package:dadd/screens/myhome.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});
//class _LoginWidgetState extends State<Login> {
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  // @override
  // void dispose(){
  //   emailController.dispose();
  //   passwordController.dispose();
  //   super.dispose();
  // }
//}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // StreamBuilder<User?>
          // stream: FirebaseAuth.instance.authStateChanges(),
          // (builder: context, snapshot)
          // {
          //   if(snapshot.hasData){
          //     return Myhome();
          //   }
          //   else{
          //     return Login()l
          //   }
          // }
          Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Welcome To',
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
                    'Welcome To',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.yellow[300],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("img/logo.png"))),
            ),
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
            // Stack(
            //   children: <Widget>[
            //     // Stroked text as border.
            //     Text(
            //       'Quiz &\nQuick',
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
            //       'Quiz &\nQuick',
            //       style: TextStyle(
            //         fontSize: 40,
            //         color: Colors.yellow[300],
            //       ),
            //     ),
            //   ],
            // ),

            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                color: Color.fromARGB(255, 59, 87, 60),
                minWidth: 500,
                height: 75,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Color.fromARGB(255, 191, 176, 39),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90.0),
                ),
                color: Color.fromARGB(255, 36, 185, 43),
                minWidth: 500,
                height: 75,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Color.fromARGB(255, 81, 75, 18),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
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
// Future signIn() async {
//   await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim(),
// };