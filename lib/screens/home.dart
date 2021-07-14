import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:practicing_widgets_flutter/bottom_bar/cart_detail.dart';
import 'package:practicing_widgets_flutter/details/beautiful_food.dart';
import 'package:practicing_widgets_flutter/details/food_with_fork.dart';
import 'package:practicing_widgets_flutter/details/tava_saladi.dart';
import 'package:practicing_widgets_flutter/details/tavada_kabab.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  //start animation
  final autoSizeGroup = AutoSizeGroup();
  var _bottomNavIndex = 0; //default index of a first screen

  late AnimationController _animationController;
  late Animation<double> animation;
  late CurvedAnimation curve;

  final iconList = <IconData>[
    Icons.home,
    Icons.search,
    Icons.favorite_border,
    Icons.add_alert_rounded,
  ];

  @override
  void initState() {
    super.initState();

    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    curve = CurvedAnimation(
      parent: _animationController,
      curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(curve);

    Future.delayed(Duration(seconds: 1), () => _animationController.forward());
  }

  @override
  void dispose() {
    super.dispose();
  }

  //end animation
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //from top to What do you want for dinner
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: ListTile(
                      leading: Text("Hi Elshan",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w300)),
                      trailing: Container(
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/image.png"),
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(2, 2),
                                blurRadius: 10)
                          ],
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 0),
                  child: Row(
                    children: [
                      Text("What do you want \nfor dinner",
                          style: TextStyle(fontSize: 21)),
                      Image.asset(
                        "images/logo.png",
                        width: MediaQuery.of(context).size.width / 4 - 20,
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //ListView
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 30, right: 8),
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade100,
                  offset: Offset(2, 2),
                  blurRadius: 5,
                )
              ]),
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/steak.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/chicken_leg.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/vegetable.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/ice-cream.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/steak.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/chicken_leg.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/vegetable.png"),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade500,
                    ),
                    width: 80,
                    child: Image.asset("images/ice-cream.png"),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
          ),
          //Recommended
          Padding(
            padding: const EdgeInsets.only(left: 13.0, top: 25),
            child: Text(
              "Recommended",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
            ),
          ),
          //After Recommended  (body)
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 25),
            child: Row(
              children: [
                Column(
                  children: [
                    //Tavada Kabab
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TavadaKababDetial()));
                      },
                      child: Container(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: 150,
                              height: 135,
                            ),
                            Positioned(
                              top: -80,
                              bottom: 0,
                              child: Container(
                                height: 80,
                                width: 80,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    "https://img.delicious.com.au/dV1WU0xR/del/2018/06/paprika-chicken-and-lentil-casserole-81983-2.jpg",
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                child: Text(
                                  "Tavada Kabab",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                top: 110,
                                child: Text(
                                  "Azerbaijani Food",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11),
                                )),
                            Positioned(
                                top: 130,
                                child: Row(
                                  children: [
                                    Text("\$24"),
                                    SizedBox(width: 80),
                                    Icon(Icons.favorite_border, size: 22)
                                  ],
                                ))
                          ],
                        ),
                        width: 150,
                        height: 160,
                      ),
                    ),
                    SizedBox(height: 45),
                    //Tava saladi
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TavaSaladiDetail()));
                      },
                      child: Container(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: 150,
                              height: 135,
                            ),
                            Positioned(
                              top: -70,
                              bottom: 0,
                              child: Container(
                                height: 80,
                                width: 80,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                    "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chicken-cacciatore-one-pot-with-orzo-336ef36.jpg?quality=90&resize=504,458",
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                child: Text(
                                  "Tava saladi",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                top: 110,
                                child: Text(
                                  "Azerbaijani Food",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11),
                                )),
                            Positioned(
                                top: 130,
                                child: Row(
                                  children: [
                                    Text("\$21"),
                                    SizedBox(width: 80),
                                    Icon(Icons.favorite_border, size: 22)
                                  ],
                                ))
                          ],
                        ),
                        height: 160,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    //Beautiful food
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BeautifulFoodDetail()));
                      },
                      child: Container(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: 150,
                              height: 135,
                            ),
                            Positioned(
                              top: -80,
                              bottom: 0,
                              child: Container(
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTuUDMXNJel6Gr4krpQnbcdK7Bsqv3ZTLIVTVz4wah3JWLGaZmNoCAnv5DqPy7uf9fx34&usqp=CAU",
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                child: Text(
                                  "Beautiful food",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                top: 110,
                                child: Text(
                                  "Azerbaijani Food",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11),
                                )),
                            Positioned(
                                top: 130,
                                child: Row(
                                  children: [
                                    Text("\$17"),
                                    SizedBox(width: 80),
                                    Icon(Icons.favorite_border, size: 22)
                                  ],
                                ))
                          ],
                        ),
                        height: 160,
                      ),
                    ),
                    SizedBox(height: 45),
                    //Food with fork
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FoodWithForkDetail()));
                      },
                      child: Container(
                        child: Stack(
                          alignment: AlignmentDirectional.bottomCenter,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              width: 150,
                              height: 135,
                            ),
                            Positioned(
                              top: -80,
                              bottom: 0,
                              child: Container(
                                width: 80,
                                height: 80,
                                child: CircleAvatar(
                                  backgroundColor: Colors.transparent,
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                    "https://img.taste.com.au/zpOFC1Rm/taste/2018/07/one-pan-haloumi-and-rice-stuffed-peppers-139096-2.jpg",
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                child: Text(
                                  "Food with fork",
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                )),
                            Positioned(
                                top: 110,
                                child: Text(
                                  "Azerbaijani Food",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11),
                                )),
                            Positioned(
                                top: 130,
                                child: Row(
                                  children: [
                                    Text("\$14"),
                                    SizedBox(width: 80),
                                    Icon(Icons.favorite_border, size: 22)
                                  ],
                                ))
                          ],
                        ),
                        height: 160,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
      //Start animated bottom bar
      floatingActionButton: ScaleTransition(
        scale: animation,
        child: FloatingActionButton(
          elevation: 8,
          backgroundColor: HexColor('#FFA400'),
          child: Icon(
            Icons.shopping_bag_outlined,
            color: HexColor('#373A36'),
          ),
          onPressed: () {
            _animationController.reset();
            _animationController.forward();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CartDetail()));
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? HexColor('#FFA400') : Colors.white;
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  AutoSizeText(
                    "Home",
                    maxLines: 1,
                    style: TextStyle(color: color),
                    group: autoSizeGroup,
                  ),
                ],
              ),
            );
          }
          if (index == 1) {
            return Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  AutoSizeText(
                    "Search",
                    maxLines: 1,
                    style: TextStyle(color: color),
                    group: autoSizeGroup,
                  ),
                ],
              ),
            );
          }
          if (index == 2) {
            return Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  AutoSizeText(
                    "Like",
                    maxLines: 1,
                    style: TextStyle(color: color),
                    group: autoSizeGroup,
                  ),
                ],
              ),
            );
          }
          if (index == 3) {
            return Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Column(
                children: [
                  Icon(
                    iconList[index],
                    size: 24,
                    color: color,
                  ),
                  AutoSizeText(
                    "Alert",
                    maxLines: 1,
                    style: TextStyle(color: color),
                    group: autoSizeGroup,
                  ),
                ],
              ),
            );
          }

          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: AutoSizeText(
                  "$index",
                  maxLines: 1,
                  style: TextStyle(color: color),
                  group: autoSizeGroup,
                ),
              )
            ],
          );
        },
        backgroundColor: HexColor('#373A36'),
        activeIndex: _bottomNavIndex,
        splashColor: HexColor('#FFA400'),
        notchAndCornersAnimation: animation,
        splashSpeedInMilliseconds: 300,
        notchSmoothness: NotchSmoothness.defaultEdge,
        gapLocation: GapLocation.center,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) => setState(() => _bottomNavIndex = index),
      ),
      //End animated bottom bar
    );
  }
}
