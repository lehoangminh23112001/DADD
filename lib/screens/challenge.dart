import 'package:flutter/material.dart';



class Challenge extends StatelessWidget {
  const Challenge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lime,
        body: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 18,
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [Text('aaa')],
                          ),
                          Container(
                              width: 100,
                              height: 10,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.black),
                                  color: Colors.green,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)))),
                          Row(
                            children: [Text('Lv 999')],
                          )
                        ],
                      )
                    ]),
                    Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 20,
                            child: CircleAvatar(
                              backgroundColor: Colors.green,
                              radius: 18,
                              child: Icon(
                                Icons.settings,
                                color: Colors.black,
                              ),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                              backgroundColor: Colors.black,
                              radius: 20,
                              child: CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 18,
                                child: Icon(
                                  Icons.logout,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                        border: Border.all(width: 5, color: Colors.black),
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 18,
                                  )),
                              Column(children: [
                                Row(
                                  children: [Text('aaa')],
                                ),
                                Row(
                                  children: [Text('lv 999')],
                                )
                              ]),
                            ]),
                            CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 8,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 6,
                                )),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.lime),
                                shadowColor:
                                    MaterialStateProperty.all(Colors.lime),
                              ),
                              onPressed: () {},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 5),
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Icon(Icons.arrow_right),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 18,
                                  )),
                              Column(children: [
                                Row(
                                  children: [Text('aaa')],
                                ),
                                Row(
                                  children: [Text('lv 999')],
                                )
                              ]),
                            ]),
                            CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 8,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 6,
                                )),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.lime),
                                shadowColor:
                                    MaterialStateProperty.all(Colors.lime),
                              ),
                              onPressed: () {},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 5),
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Icon(Icons.arrow_right),
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(children: [
                              CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: 20,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 18,
                                  )),
                              Column(children: [
                                Row(
                                  children: [Text('aaa')],
                                ),
                                Row(
                                  children: [Text('lv 999')],
                                )
                              ]),
                            ]),
                            CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 8,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 6,
                                )),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.lime),
                                shadowColor:
                                    MaterialStateProperty.all(Colors.lime),
                              ),
                              onPressed: () {},
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 5),
                                    color: Colors.red,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                                child: Icon(Icons.arrow_right),
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                Column(children: [
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 25,
                        child: Icon(
                          Icons.people,
                          color: Colors.black,
                        ),
                      )),
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 25,
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.black,
                        ),
                      )),
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 25,
                        child: Icon(
                          Icons.shopping_bag,
                          color: Colors.black,
                        ),
                      )),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Version 1.0.0'),
                    Container(
                      width: 75,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.black, width: 5),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.facebook, color: Colors.black),
                            Icon(Icons.mail, color: Colors.black)
                          ]),
                    )
                  ],
                )
              ],
            )));
  }
}
