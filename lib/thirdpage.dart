import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ThirdPageScreenState();
  }
}

class ThirdPageScreenState extends State<ThirdPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        actions: <Widget>[
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              )),
          SizedBox(
            width: 280.0,
          ),
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(60, 20, 0, 40),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    Icons.account_circle_outlined,
                    size: 80,
                    color: Colors.green,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 5),
                  child: Column(
                    children: [
                      Text(
                        "Tommy Berns",
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "Los Angles",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          Container(
                            child: Icon(
                              Icons.location_on_sharp,
                              color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60.0),
            child: Row(
              children: [
                Container(
                  width: 240,
                  height: 240,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          border: Border.all(width: 3),
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Balance",
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              "\$ 567,57",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 3),
                  child: RawMaterialButton(
                    onPressed: () {},
                    elevation: 8.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.bar_chart,
                      size: 40,
                      color: Colors.blue.shade900,
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 50, right: 50, top: 95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text("."),
                              Text("INCOMES",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ],
                      ),
                      Text(
                        "309",
                        style: TextStyle(fontSize: 50),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "EXPENSES",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "234",
                        style: TextStyle(fontSize: 50),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        child: Container(
          margin: EdgeInsets.fromLTRB(30, 0, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                iconSize: 40,
                color: Colors.grey.shade700,
                onPressed: () {},
                icon: Icon(
                  Icons.area_chart_sharp,
                ),
              ),
              IconButton(
                iconSize: 40,
                color: Colors.grey.shade700,
                onPressed: () {},
                icon: Icon(
                  Icons.monetization_on_outlined,
                ),
              ),
              IconButton(
                iconSize: 40,
                color: Colors.grey.shade700,
                onPressed: () {},
                icon: Icon(
                  Icons.lock,
                ),
              ),
              IconButton(
                iconSize: 40,
                color: Colors.blue.shade900,
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                ),
              ),
              IconButton(
                iconSize: 40,
                color: Colors.grey.shade700,
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
