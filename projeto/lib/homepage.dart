import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projeto/modelclass.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Card1? card1;
  Card2? card2;
  Card3? card3;

  BookingSpot? obj_booking;
  Future? obj_future;

  Future<BookingSpot> apicalling() async
  {
    var newurl= Uri.parse(
        "https://run.mocky.io/v3/c8f28ee5-a4fd-4b6a-ac6f-43ae176be349");
    var res= await http.get(newurl);
    if(res.statusCode==200)
    {
      var data=json.decode(res.body);
      obj_booking=BookingSpot.fromJson(data);
      card1=obj_booking!.card1;
      card2=obj_booking!.card2;
      card3=obj_booking!.card3;

    }
    return obj_booking!;
  }

  @override
  void initState() {
    obj_future=apicalling();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        body: FutureBuilder(
            future: obj_future,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return homewidget(
                  card1, card2,card3
                );
              }
              else {
                return LinearProgressIndicator();
              }
            }
        )
    );
  }

  Widget homewidget(
  Card1? card1,
  Card2? card2,
  Card3? card3
      )
  {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height+200,
              width: MediaQuery.of(context).size.width,
              color: HexColor("3C4CAB"),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.close,color: Colors.white,size: 16,),
                          SizedBox(width: 150,),
                          Text("Confirmation",style: TextStyle(
                              color: Colors.white,fontSize: 18
                          ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 30,right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Detail booking",style: TextStyle(
                                  color: Colors.white,fontSize: 18
                              ),),
                              SizedBox(width: 330,),
                              Icon(Icons.mode_edit,color: Colors.white,size: 18,)
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(14,10,16,10),
                        // height: (MediaQuery.of(context).size.width - 10) * .333,
                        width: MediaQuery.of(context).size.width - 30,
                        // color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.only(left: 14, top: 14,bottom: 14,right: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                          fit: BoxFit.fill,
                                          alignment: FractionalOffset.topCenter,
                                          image: NetworkImage(card1!.placeimage.toString()),
                                        )
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 26),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            card1.amount.toString(),
                                            style: TextStyle(color: Colors.black,
                                                fontSize: 26),
                                          ),
                                          SizedBox(width: 4,),
                                          Text("/ Day", style: TextStyle(
                                              color: Colors.black38,fontSize: 12
                                          ),)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            card1.place.toString(),
                                            style: TextStyle(color: Colors.black,fontSize: 18),
                                          ),
                                          SizedBox(width: 4),
                                          Text(card1.country.toString(),style: TextStyle(
                                              color: Colors.black38,fontSize: 16
                                          ),)
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.car_rental,
                                                    color: Colors.black38,
                                                  ),
                                                  SizedBox(width: 6,),
                                                  Text("ab",style: TextStyle(
                                                      color: Colors.black12
                                                  ),)
                                                ],
                                              )
                                          ),
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 20, right: 20),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.bus_alert,color: Colors.black38,
                                                  ),
                                                  SizedBox(width: 6,),
                                                  Text("ds",style: TextStyle(
                                                      color: Colors.black12
                                                  ),)
                                                ],
                                              )
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                left: 10, right: 10),
                                            child: Row(
                                              children: [
                                                Icon(Icons.train,color: Colors.black38,),
                                                SizedBox(width: 6,),
                                                Text("jdcjjkefkjek",style: TextStyle(
                                                    color: Colors.black12
                                                ),)
                                              ],
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10,12,10,0),
                        height: (MediaQuery.of(context).size.width - 10) * .222,
                        width: MediaQuery.of(context).size.width - 10,
                        // color: Colors.blue,
                        child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),

                            ),
                            color: Colors.white,
                            child: (
                                Container(
                                    margin: EdgeInsets.only(top: 10,left: 10),
                                    padding: EdgeInsets.only(top: 10,left: 10),
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("Check in",style: TextStyle(color: Colors.black38,fontSize: 18),),
                                                Container(
                                                  padding: EdgeInsets.only(top: 8),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Icon(Icons.arrow_downward,size: 16,),
                                                      SizedBox(height: 4,),
                                                      Text(card2!.checkin.toString(),style: TextStyle(color: Colors.black38,fontSize: 18,
                                                          fontWeight: FontWeight.bold)
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 30,right: 16),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("Check out",style: TextStyle(color: Colors.black38,fontSize: 18),),
                                                Container(
                                                  padding: EdgeInsets.only(top: 8),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Icon(Icons.arrow_upward_outlined,size: 16,),
                                                      Text(card2!.checkout.toString(),style: TextStyle(color: Colors.black38,fontSize: 18,
                                                          fontWeight: FontWeight.bold)
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(left: 30,right: 16),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Text("Persons",style: TextStyle(color: Colors.black38,fontSize: 18),),
                                                Container(
                                                  padding: EdgeInsets.only(top: 8),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Icon(Icons.account_circle,size: 16,),
                                                      SizedBox(height: 4,),
                                                      Text(card2!.persons.toString(),style: TextStyle(color: Colors.black38,fontSize: 18,
                                                          fontWeight: FontWeight.bold)
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                )
                            )
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,top: 30,right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text("Payment mehtod",style: TextStyle(
                                  color: Colors.white,fontSize: 18
                              ),),
                              SizedBox(width: 300,),
                              Icon(Icons.mode_edit,color: Colors.white,size: 18,)
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(14,10,16,10),
                        height: (MediaQuery.of(context).size.width - 10) * .444,
                        width: MediaQuery.of(context).size.width - 30,
                        // color: Colors.blue,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                          color: Colors.white,
                          child: Container(
                            margin: EdgeInsets.only(top: 30,left: 30),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.home,color: Colors.deepOrange,),
                                    Container(
                                      margin: EdgeInsets.only(left: 30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Mastercard Platinum",style: TextStyle(
                                              fontSize: 20
                                          ),),
                                          SizedBox(height: 10,),
                                          Text("4538",style: TextStyle(
                                              color: Colors.black38
                                          ),)
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      margin: EdgeInsets.only(top: 10,right: 20,left: 130),
                                      child: Row(
                                        // mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.check_circle,color: Colors.green,),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 30,top: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(card3!.calcamount.toString(),style: TextStyle(
                                          color: Colors.black,fontSize: 20,fontWeight:
                                      FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 30,top: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Total amount",style: TextStyle(
                                          fontSize: 20
                                      ),),
                                      Expanded(child: SizedBox()),
                                      Text(card3.totalamount.toString(),style: TextStyle(
                                          fontSize: 20,fontWeight: FontWeight.bold
                                      ),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 20,right: 30),
                      //padding: EdgeInsets.only(top: 20),
                      height: 60,
                      width: MediaQuery.of(context).size.width-50,
                      decoration: BoxDecoration(
                        color: HexColor("3C4CAB"),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          "Booking Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ]
              )
          ),
        )
    );
  }
}