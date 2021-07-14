import 'package:flutter/material.dart';
import 'package:jumping_bottom_nav_bar/jumping_bottom_nav_bar.dart';
import 'package:practicing_widgets_flutter/screens/home.dart';

class TavadaKababDetial extends StatefulWidget {
  const TavadaKababDetial({Key? key}) : super(key: key);

  @override
  _TavadaKababDetialState createState() => _TavadaKababDetialState();
}

class _TavadaKababDetialState extends State<TavadaKababDetial> {
  //animated bottom bar
  int selectedIndex = 3;

  void onChangeTab(int index) {
    selectedIndex = index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 0.75))
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(title: '')));
                        },
                        icon: Icon(Icons.arrow_back_ios_sharp)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 10.0,
                            offset: Offset(0.0, 0.75))
                      ],
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          size: 28,
                        )),
                  ),
                ],
              ),
              Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage: NetworkImage(
                        "https://img.delicious.com.au/dV1WU0xR/del/2018/06/paprika-chicken-and-lentil-casserole-81983-2.jpg",
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Azerbaijani Food",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                    Text("\$24",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                    Icon(Icons.star, color: Colors.yellow.shade700),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_fire_department,
                            color: Colors.yellow.shade900, size: 22),
                        SizedBox(width: 4),
                        Text("340 calories",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w200)),
                        SizedBox(width: 15),
                        Icon(Icons.motorcycle_sharp),
                        SizedBox(width: 4),
                        Text("20-25 min",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w200)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.orange.shade400,
                          ),
                          height: 35,
                          width: 90,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.remove),
                                Text(
                                  "2",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Icon(Icons.add),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text("Details",
                    style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.w400)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                    "Qoyun ətinin yumşaq hissəsi soğanla ətçəkən maşından keçirilir, istiot və duz vurulub qarışdırılır. Hər pay üçün 3 ədəd girdə bitoçki hazırlanıb yağda qızardılır, şəkər və sirkə vurulub şirə hazırlanır. Tava kababını kiçik tavaya düzüb üstünə göyərti qarışdırılmış yumurta, habelə soğandan hazırlanmış şirə töküb hazır vəziyyətə gətirirlər. Süfrəyə verdikdə üstünə göyərti səpilir.",
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w200)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text("Ingredients",
                    style:
                        TextStyle(fontSize: 21, fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      ),
      //start animated bottom bar
      bottomNavigationBar: JumpingTabBar(
        onChangeTab: onChangeTab,
        backgroundColor: Colors.transparent,
        circleGradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.transparent,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topRight,
        ),
        items: [
          TabItemIcon(
              buildWidget: (_, color) => Container(
                    color: Colors.transparent,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://evimizstore.az/storage/thumb/2021-05-09/a14fd5cbeef6979c28f1af69d53e05bf.jpg"),
                        radius: 30),
                    width: 60,
                  ),
              curveColor: Colors.orange),
          TabItemIcon(
              buildWidget: (_, color) => Container(
                    color: Colors.transparent,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsP6F4YLMFoqDVX5iT0iC6epc-rePpm3Vqxw&usqp=CAU"),
                        radius: 30),
                    width: 60,
                  ),
              curveColor: Colors.orange),
          TabItemIcon(
              buildWidget: (_, color) => CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Container(
                      color: Colors.white,
                      child: Icon(Icons.shopping_bag_outlined,
                          color: Colors.black, size: 35),
                      width: 50,
                    ),
                  ),
              curveColor: Colors.orange),
          TabItemIcon(
              buildWidget: (_, color) => Container(
                    color: Colors.transparent,
                    child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://www.crushpixel.com/big-static7/preview4/mushroom-icon-139859.jpg"),
                        radius: 30),
                    width: 60,
                  ),
              curveColor: Colors.orange),
          TabItemIcon(
              buildWidget: (_, color) => Container(
                    color: Colors.transparent,
                    child: CircleAvatar(
                        backgroundImage: AssetImage("images/parsley.png"),
                        radius: 30),
                    width: 60,
                  ),
              curveColor: Colors.orange),
        ],
        selectedIndex: selectedIndex,
      ),
      //end animated bottom bar
    );
  }
}
