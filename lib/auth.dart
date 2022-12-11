// import 'package:dadd/user.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';

// class AuthService{
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   User _userFromFirebaseUser(FirebaseUser user){
//     return user != null ? User(uid: user.uid) : null ;
//   }
//   Future signInEmailAndPass(String email, String password) async{
//     try{
//       AuthResult authResult = await _auth.signInWithEmailAndPassword(email: email, password: password);
//       FirebaseUser firebaseUser = authResult.user;
//       return _userFromFirebaseUser(firebaseUser)
//     }catch(e){
//       print(e.toString());
//     }
//   }
//   Future signUpWithEmailAndPassword(String email, String password) async {
//     try{

//     }catch(e){
//       print(e.toString());
//     }
//   }
// }