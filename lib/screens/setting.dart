
import 'package:flutter/material.dart';



class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>
    with TickerProviderStateMixin {
  late TabController _tabcontroller;
  @override
  void initState() {
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: CircleAvatar(
                              backgroundColor: Colors.lime,
                              radius: 18,
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'aaa',
                                  style: TextStyle(color: Colors.lime),
                                )
                              ],
                            ),
                            Container(
                                width: 100,
                                height: 10,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    color: Colors.lime,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)))),
                            Row(
                              children: [
                                Text(
                                  'Lv 999',
                                  style: TextStyle(color: Colors.lime),
                                )
                              ],
                            )
                          ],
                        )
                      ]),
                  Row(
                    children: [
                      CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                          child: CircleAvatar(
                            backgroundColor: Colors.lime,
                            radius: 18,
                            child: Icon(
                              Icons.settings,
                              color: Colors.black,
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
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
                  )
                ]),
          ),
          Center(
            child: Image.asset(
              'img/logo.png',
              height: 300,
              width: 500,
            ),
          ),
          TabBar(
              padding: EdgeInsets.only(right: 50, left: 50),
              indicatorColor: Colors.lime,
              controller: _tabcontroller,
              tabs: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lime),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                    child: Text(
                      'Thông tin',
                      style: TextStyle(
                          color: Colors.lime,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lime),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                    child: Text(
                      'Lịch sử',
                      style: TextStyle(
                          color: Colors.lime,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.lime),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Center(
                    child: Text(
                      'Cài đặt',
                      style: TextStyle(
                          color: Colors.lime,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ]),
          Container(
            width: double.infinity,
            height: 400,
            margin: EdgeInsets.only(right: 30, left: 30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lime, width: 5),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: TabBarView(controller: _tabcontroller, children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
                        child: CircleAvatar(
                          backgroundColor: Colors.lime,
                          radius: 27,
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        )),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tên',
                          style: TextStyle(
                              color: Colors.lime,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Lv',
                          style: TextStyle(
                              color: Colors.lime,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Tạo ngày',
                          style: TextStyle(
                              color: Colors.lime,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                              color: Colors.lime,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ]),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
