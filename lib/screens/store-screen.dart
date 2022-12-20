import 'package:flutter/material.dart';
import 'package:dadd/screens/bag.dart';
import 'package:dadd/screens/myhome.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  var xucSac = 'img/xucsac.jpg';
  var rua = 'img/rua.jpg';
  var ice = 'img/ice.jpg';
  var bomb = 'img/bomb.jpg';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("img/background15.jpg"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Myhome()),
                  );
                },
                highlightColor: Colors.transparent,
                color: Colors.blue.withOpacity(0.5),
                splashColor: Colors.transparent,
                textColor: Color.fromARGB(255, 255, 255, 255),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 40,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(200, 0, 0, 0),
                
                child: Stack(
                  children: <Widget>[
                    // Stroked text as border.
                    Text(
                      'Store',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 6
                          ..color = Colors.blue[700]!,
                      ),
                    ),
                    // Solid text as fill.
                    Text(
                      'Store',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.yellow[300],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 36, 147, 238),
                      Color.fromARGB(153, 225, 160, 255)
                    ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                child: Row(
                  children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(xucSac),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Xúc sắc tài xỉu',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Nhận ngẫu nhiên số tiền tương \nứng với số nút trên xúc sắc x 10',
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          
                          margin: EdgeInsets.only(left: 80),
                          child: ElevatedButton(
                            
                            onPressed: () {

                            },
                            child: Text(
                              '20.000',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                shadowColor:
                                    MaterialStateProperty.all(Colors.transparent),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 158, 245, 240))))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [Colors.blue, Color.fromARGB(153, 225, 160, 255)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Row(
                  children: [
                    Container(
                      height: 60.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(rua),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chúa tể loài rùa',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Bỏ qua câu hỏi và coi đó là câu \ntrả lời đúng',
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80),
                          child: ElevatedButton(
                            onPressed: () {

                            },
                            child: Text(
                              '50.000',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                shadowColor:
                                    MaterialStateProperty.all(Colors.transparent),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 158, 245, 240))))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [Colors.blue, Color.fromARGB(153, 225, 160, 255)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Row(
                  children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(bomb),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lựu đạn nè né đi',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Ẩn một câu trả lời sai',
                          style: TextStyle(fontSize: 12),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '30.000',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                shadowColor:
                                    MaterialStateProperty.all(Colors.transparent),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 158, 245, 240))))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        colors: [Colors.blue, Color.fromARGB(153, 225, 160, 255)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Row(
                  children: [
                    Container(
                      height: 90.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ice),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Băng giá mùa hạ',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Ngưng thời gian câu hỏi 10s',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '10.000',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ButtonStyle(
                                shadowColor:
                                    MaterialStateProperty.all(Colors.transparent),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18.0),
                                        side: BorderSide(
                                            color: Color.fromARGB(
                                                255, 158, 245, 240))))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BagScreen()),
          );
        },
        child: const Icon(
          Icons.shopping_bag,
          color: Colors.white,
        ),
      ),
    );
  }
}
