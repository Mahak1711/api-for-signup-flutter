import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_assessment/secondpage.dart';
import 'package:http/http.dart';

class MainScreenPage extends StatefulWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  State<MainScreenPage> createState() => _MainScreenPageState();
}

class _MainScreenPageState extends State<MainScreenPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email, password) async {
    try {
      Response response =
          await post(Uri.parse("https://reqres.in/api/register"), body: {
        'email': email,
        'password': password,
      });
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print("Account created successfully");
      } else {
        print("Failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue.shade900,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(left: 30, top: 100.0, right: 30),
              child: Text(
                "Welcome, to sign in continue",
                style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 80.0, right: 30, left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      focusColor: Colors.white70,
                      labelText: "Email",
                    ),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      focusColor: Colors.white70,
                      labelText: "Password",
                    ),
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                login(emailController.text.toString(),
                    passwordController.text.toString());
              },
              child: Container(
                margin: EdgeInsets.only(top: 100),
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade900,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 15),
                Container(
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Have an account?",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondPageScreen(),
                                ));
                          },
                          child:
                              Text("Sign In", style: TextStyle(fontSize: 25))),
                    ],
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
