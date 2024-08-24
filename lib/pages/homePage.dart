// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/widgets/BannerWidget.dart';
import 'package:project/widgets/festivalSale.dart';
import 'package:project/widgets/gradeView.dart';
import 'package:project/widgets/horizontalScroll.dart';
import 'package:project/widgets/indecator.dart';
import 'package:project/widgets/textformfieldWidget.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

bool tap = true;

class _homePageState extends State<homePage> {
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 0, 32, 1),
        title: Image.asset(
          "assets/Icon.png",
          width: 70,
          height: 70,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => searchPage()),
              // );
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Color.fromRGBO(8, 0, 32, 1),
        child: ListView(
          children: [
            textformfieldWidget(),
            SizedBox(
              height: 20,
            ),
            //////////////////////////////////////////
            Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(18, 1, 69, 0.848),
                ),
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                  controller: PageController(viewportFraction: 1.08),
                  itemCount: appBannerList.length,
                  itemBuilder: (context, index) {
                    return BannarWidget(
                      appBanner: appBannerList[index],
                    );
                  },
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  appBannerList.length,
                  (index) => Indicator(
                    isAcive: _selectedIndex == index ? true : false,
                  ),
                ),
              ],
            ),
            ///////////////////////////////////////////
            SizedBox(
              height: 10,
            ),
            horizontalScroll(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Lastest",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GradeView(
              ontap: () {
                setState(() {});
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(18, 1, 69, 0.848),
                borderRadius: BorderRadius.circular(10),
              ),
              child: festivalSale(),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "30% ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(8, 0, 32, 1),
                          ),
                        ),
                        Text(
                          "Discount",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromRGBO(8, 0, 32, 1),
                          ),
                        ),
                        Text(
                          "Stayed several mistake \n joy painful reached",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(8, 0, 32, 1),
                          ),
                        ),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(8, 0, 32, 1),
                            ),
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Shop Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/Rectangle 2 (1).png",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
