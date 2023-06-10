import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assessment/thirdpage.dart';

class SecondPageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SecondPageScreenState();
  }
}

class SecondPageScreenState extends State<SecondPageScreen> {
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
            padding: EdgeInsets.fromLTRB(30, 0, 0, 20),
            child: Row(
              children: [
                Text(
                  "Balance",
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
                Text(
                  " \$ 567,57",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60.0, right: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPageScreen(),
                        ));
                  },
                  elevation: 8.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.blue.shade900,
                  ),
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 8.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.blue.shade900,
                  ),
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            child: Image.asset('assets/images/card.jpg'),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Card",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              Divider(
                thickness: 3,
                endIndent: 20,
                indent: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              Divider(
                thickness: 3,
                endIndent: 20,
                indent: 20,
              ),
            ],
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
