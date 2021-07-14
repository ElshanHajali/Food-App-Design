import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:practicing_widgets_flutter/screens/home.dart';

class CartDetail extends StatefulWidget {
  const CartDetail({Key? key}) : super(key: key);

  @override
  _CartDetailState createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: HexColor('#FFFFFF'),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 6,
                              spreadRadius: 4,
                              offset: Offset(2.0, 2.0))
                        ]),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(title: '')));
                        },
                        icon: Icon(Icons.arrow_back_ios_outlined)),
                  ),
                  Text("Cart",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2.0, 2.0),
                            color: Colors.grey.shade500,
                            spreadRadius: 4,
                            blurRadius: 6,
                          )
                        ]),
                    child: CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("images/image.png"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Container(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        //Tavada kabab
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 65,
                                    backgroundImage: NetworkImage(
                                      "https://img.delicious.com.au/dV1WU0xR/del/2018/06/paprika-chicken-and-lentil-casserole-81983-2.jpg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    Text("Tava kababi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 5),
                                    Text("Beautiful mixed chicken",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(height: 40),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.orange.shade400,
                                          ),
                                          height: 30,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(Icons.remove),
                                                Text(
                                                  "2",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Icon(Icons.add),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text("\$21",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: MediaQuery.of(context).size.width - 20,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        //Tava saladi
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 65,
                                    backgroundImage: NetworkImage(
                                      "https://img.delicious.com.au/dV1WU0xR/del/2018/06/paprika-chicken-and-lentil-casserole-81983-2.jpg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    Text("Tava kababi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 5),
                                    Text("Beautiful mixed chicken",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(height: 40),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.orange.shade400,
                                          ),
                                          height: 30,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(Icons.remove),
                                                Text(
                                                  "2",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Icon(Icons.add),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text("\$21",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: MediaQuery.of(context).size.width - 20,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        //food with fork
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 65,
                                    backgroundImage: NetworkImage(
                                      "https://img.delicious.com.au/dV1WU0xR/del/2018/06/paprika-chicken-and-lentil-casserole-81983-2.jpg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    Text("Tava kababi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 5),
                                    Text("Beautiful mixed chicken",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(height: 40),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.orange.shade400,
                                          ),
                                          height: 30,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(Icons.remove),
                                                Text(
                                                  "2",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Icon(Icons.add),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text("\$21",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: MediaQuery.of(context).size.width - 20,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20),
                        //Beautiful food
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Container(
                                  child: CircleAvatar(
                                    radius: 65,
                                    backgroundImage: NetworkImage(
                                      "https://img.delicious.com.au/dV1WU0xR/del/2018/06/paprika-chicken-and-lentil-casserole-81983-2.jpg",
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20),
                                    Text("Tava kababi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500)),
                                    SizedBox(height: 5),
                                    Text("Beautiful mixed chicken",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w300)),
                                    SizedBox(height: 40),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: Colors.orange.shade400,
                                          ),
                                          height: 30,
                                          width: 80,
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Icon(Icons.remove),
                                                Text(
                                                  "2",
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                Icon(Icons.add),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        Text("\$21",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: MediaQuery.of(context).size.width - 20,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                width: MediaQuery.of(context).size.width - 20,
                height: 450,
                color: Colors.transparent,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  //top
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 50.0, top: 12, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //left
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Subtotal"),
                            Text("Delivery"),
                            Text("Total",
                                style: TextStyle(fontWeight: FontWeight.w700)),
                          ],
                        ),
                        //right
                        Column(
                          children: [
                            Text("\$69"),
                            Text("\$00"),
                            Text("\$69",
                                style: TextStyle(fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.orange.shade300,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(1, 3),
                          spreadRadius: 5,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Center(
                        child: Text("Check Out",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 18))),
                  )
                  //bottom
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
