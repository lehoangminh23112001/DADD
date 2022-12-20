import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FriendScreen extends StatefulWidget {
  const FriendScreen({super.key});

  @override
  State<FriendScreen> createState() => _FriendScreenState();
}

class _FriendScreenState extends State<FriendScreen> {
  TextEditingController friend = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)))),
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
                  width: 300,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  style: TextStyle(color: Colors.lime),
                  controller: friend,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.lime, width: 5),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.lime,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.find_replace_sharp,
                        color: Colors.lime,
                      )),
                ),
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
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          leading: CircleAvatar(
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
                          title: Text(
                            'aaaa',
                            style: TextStyle(
                                color: Colors.lime,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Đang hoạt động',
                            style: TextStyle(
                                color: Colors.lime,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.lime,
                              )),
                        );
                      }))),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              child: Container(
                                  width: 28,
                                  color: Colors.lime,
                                  child: Icon(Icons.people, color: Colors.black)),
                              radius: 20,
                              backgroundColor: Colors.lime),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                                child: Container(
                                    width: 28,
                                    color: Colors.lime,
                                    child: Icon(Icons.shopping_bag,
                                        color: Colors.black)),
                                radius: 20,
                                backgroundColor: Colors.lime),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              child: Container(
                                  width: 28,
                                  color: Colors.lime,
                                  child: Icon(Icons.store, color: Colors.black)),
                              radius: 20,
                              backgroundColor: Colors.lime),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
