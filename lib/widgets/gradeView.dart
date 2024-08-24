import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/pages/aboutPage.dart';

List item = [
  {
    "image": "assets/Rectangle 2.png",
    "name": "One shoulder Top",
    "price": "10.00\$"
  },
  {
    "image": "assets/Rectangle 3.png",
    "name": "Cinched Waist Top",
    "price": "8.00\$"
  },
  {
    "image": "assets/Rectangle 4.png",
    "name": "Off Shoulder Top",
    "price": "6.00\$"
  },
  {"image": "assets/Rectangle 5.png", "name": "Crop Top", "price": "4.00\$"},
];

bool tap = false;
Widget GradeView({
  required VoidCallback ontap,
}) =>
    Container(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 300,
        ),
        itemCount: item.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => about(
                    data: item[i],
                  ),
                ),
              );
            },
            //////////////////////////////////////////////////////

            child: Column(
              children: [
                Stack(
                  children: [
                    Card(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.all(20),
                        child: Image.asset(
                          item[i]['image'],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: ontap,
                      icon: FaIcon(
                        tap == false
                            ? FontAwesomeIcons.heart
                            : FontAwesomeIcons.heartCircleBolt,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    item[i]["name"],
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 2,
                ),
                Text(
                  item[i]["price"],
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        },
      ),
    );
