// //import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:dadd/screens/myhome.dart';
// //import 'package:flutter/src/widgets/container.dart';
// //import 'package:flutter/src/widgets/framework.dart';
// import 'package:dadd/screens/store-screen.dart';
// //import 'package:mot_thu_gi_do/store-screen.dart';

// class BagScreen extends StatefulWidget {
//   const BagScreen({super.key});

//   @override
//   State<BagScreen> createState() => _BagScreenState();
// }

// class _BagScreenState extends State<BagScreen> {
//   var xucSac = 'img/xucsac.jpg';
//   var rua = 'img/rua.jpg';
//   var ice = 'img/ice.jpg';
//   var bomb = 'img/bomb.jpg';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("img/background10.jpg"), fit: BoxFit.cover),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 15,
//               ),
//               Container(
//                 margin: EdgeInsets.only(
//                   right: 15,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     MaterialButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => Myhome()),
//                         );
//                       },
//                       highlightColor: Colors.transparent,
//                       color: Colors.blue.withOpacity(0.5),
//                       splashColor: Colors.transparent,
//                       textColor: Color.fromARGB(255, 255, 255, 255),
//                       child: Icon(
//                         Icons.arrow_back_ios_new,
//                         size: 24,
//                       ),
//                       padding: EdgeInsets.all(16),
//                       shape: CircleBorder(),
//                     ),
//                     Stack(
//                       children: <Widget>[
//                         // Stroked text as border.
//                         Text(
//                           'My Bag',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 40,
//                             foreground: Paint()
//                               ..style = PaintingStyle.stroke
//                               ..strokeWidth = 6
//                               ..color = Colors.blue[700]!,
//                           ),
//                         ),
//                         // Solid text as fill.
//                         Text(
//                           'My Bag',
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 40,
//                             color: Colors.yellow[300],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 45,
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 25, right: 25),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           children: [
//                             Container(
//                               decoration: (BoxDecoration(
//                                 color: Color.fromARGB(255, 219, 226, 232)
//                                     .withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(12),
//                               )),
//                               height: 90,
//                               width: 90,
//                               child: Image(
//                                 image: AssetImage(rua),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Text(
//                               '32',
//                               style: TextStyle(
//                                   decoration: TextDecoration.none, fontSize: 20),
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Container(
//                               decoration: (BoxDecoration(
//                                 color: Color.fromARGB(255, 219, 226, 232)
//                                     .withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(12),
//                               )),
//                               height: 90,
//                               width: 90,
//                               child: Image(
//                                 image: AssetImage(bomb),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Text(
//                               '100',
//                               style: TextStyle(
//                                   decoration: TextDecoration.none, fontSize: 20),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 35,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           children: [
//                             Container(
//                               decoration: (BoxDecoration(
//                                 color: Color.fromARGB(255, 219, 226, 232)
//                                     .withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(12),
//                               )),
//                               height: 90,
//                               width: 90,
//                               child: Image(
//                                 image: AssetImage(ice),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Text(
//                               '32',
//                               style: TextStyle(
//                                   decoration: TextDecoration.none, fontSize: 20),
//                             )
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Container(
//                               decoration: (BoxDecoration(
//                                 color: Color.fromARGB(255, 219, 226, 232)
//                                     .withOpacity(0.2),
//                                 borderRadius: BorderRadius.circular(12),
//                               )),
//                               height: 90,
//                               width: 90,
//                               child: Image(
//                                 image: AssetImage(xucSac),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Text(
//                               '100',
//                               style: TextStyle(
//                                   decoration: TextDecoration.none, fontSize: 20),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => StoreScreen()),
//           );
//         },
//         child: const Icon(
//           Icons.shopify,
//           color: Colors.white,
//         ),
//         backgroundColor: Colors.blueAccent.withOpacity(0.5),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

//import 'package:lt_didong/Screen/home.dart';
//import 'package:mot_thu_gi_do/store-screen.dart';

class BagScreen extends StatefulWidget {
  const BagScreen({super.key});

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  void buyItem(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: CircleAvatar(
                          backgroundColor: Colors.lime,
                          radius: 18,
                          child: Icon(
                            Icons.logout,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.only(right: 30, left: 30),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.lime, width: 5),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: ListView(
                  children: [
                    ListTile(
                      leading: Image.asset('img/rua.png'),
                      title: Text(
                        'Con rùa',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '12',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.lime,
                          )),
                    ),
                    ListTile(
                      leading: Image.asset('img/xucsac.png'),
                      title: Text(
                        'Xúc sắc ma thuật',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '12',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.lime,
                          )),
                    ),
                    ListTile(
                      leading: Image.asset('img/ice.png'),
                      title: Text(
                        'Băng giá vĩnh cữu',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.lime,
                          )),
                    ),
                    ListTile(
                      leading: Image.asset('img/bomb.png'),
                      title: Text(
                        'Bom hạt nhân',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        '11',
                        style: TextStyle(
                            color: Colors.lime,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: Colors.lime,
                          )),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
