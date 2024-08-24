import 'package:flutter/material.dart';
import 'package:project/widgets/SearchContaniers.dart';
import 'package:project/widgets/cards.dart';
import 'package:project/widgets/festivalSale.dart';

class searchPage extends StatelessWidget {
  const searchPage({super.key});

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
        color: Color.fromRGBO(8, 0, 32, 1),
        child: ListView(
          children: [
            SearchContaniers(),
            SizedBox(
              height: 10,
            ),
            festivalSale(),
            SizedBox(
              height: 10,
            ),
            CardPage(),
          ],
        ),
      ),
    );
  }
}
