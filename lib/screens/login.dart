//import 'dart:ui';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dadd/screens/myhome.dart';

class Login extends StatelessWidget {
  const Login({super.key});
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
                  'Quiz &\nQuick',
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
                  'Quiz &\nQuick',
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
                //controller:  emailController,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
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
                    //controller: passwordController,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "Password",
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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.green,
                minWidth: 500,
                height: 50,
                onPressed: (){},
                //onPressed: signIn,
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => Myhome()),
                //   );
                // },
                child: Text(
                  'Login',
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
                onPressed: () {},
                child: Text(
                  'Forgot Password',
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
// Future signIn() async {
//   await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailController.text.trim(), password: passwordController.text.trim(),
// };