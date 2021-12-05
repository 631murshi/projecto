import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
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
  _registerpageState createState() => _registerpageState();
}

class _registerpageState extends State<loginpage> {
  TextEditingController obj_email=TextEditingController();
  TextEditingController obj_password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            //margin: EdgeInsets.only(top: 30,left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(top: 30,left: 18),
                  child: Column(
                  children: [
                    Text("LOG IN",style: TextStyle(
                        color: Colors.black,fontSize: 26,fontWeight: FontWeight.bold
                    ),)
                  ],
                )
                ),
                Container(
                height: 70,
                 width: 400,
                 margin: EdgeInsets.only(top: 30),
                 padding: EdgeInsets.only(left: 16),
                  child: Center(
                  child: TextField(
                    controller: obj_email,
                    onChanged: (val){},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email ",
                      hintStyle: TextStyle(fontSize: 16,color: Colors.black),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.only(left: 14,top: 14,bottom: 14),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black26)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)
                      )

                    ),
                  ),
                )
                ),
                Container(
                    height: 70,
                    width: 400,
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(left: 16),
                    child: Center(
                      child: TextField(
                        controller: obj_password,
                        onChanged: (val){},
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password ",
                            hintStyle: TextStyle(fontSize: 16,color: Colors.black),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.only(left: 14,top: 14,bottom: 14),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black26)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)
                            )

                        ),
                      ),
                    )
                ),
                Container(
                  margin: EdgeInsets.only(top: 30,left: 16),
                  //padding: EdgeInsets.only(left: 16),
                  height: 50,
                  width: 385,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                   // border: Border.all(color: Colors.red, width: 2),
                  ),
                  child: Center(
                    child: Text("LOG IN",style: TextStyle(
                      color: Colors.white,fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
