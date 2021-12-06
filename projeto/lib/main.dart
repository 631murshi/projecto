import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projeto/homepage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const loginpage(),
    );
  }
}
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController obj_username = TextEditingController();
  TextEditingController obj_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: HexColor("3C4CAB"),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Text(
                "USER_LOGIN",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                height: 70,
                width: 400,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: TextField(
                    controller: obj_username,
                    onChanged: (val) {},
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Username ",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                        EdgeInsets.only(left: 14, top: 14, bottom: 14),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black26)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                )),
            Container(
                height: 70,
                width: 400,
                margin: EdgeInsets.only(top: 40, bottom: 30),
                //padding: EdgeInsets.only(top:20),
                child: Center(
                  child: TextField(
                    controller: obj_password,
                    onChanged: (val) {},
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                        EdgeInsets.only(left: 14, top: 14, bottom: 14),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black26)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomepage()));
              },
              child: Container(
                margin: EdgeInsets.only(top: 30, left: 10),
                //padding: EdgeInsets.only(top: 20),
                height: 50,
                width: 385,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // border: Border.all(color: Colors.red, width: 2),
                ),
                child: Center(
                  child: Text(
                    "LOG IN",
                    style: TextStyle(
                        color: HexColor("01B0AB"),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
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

