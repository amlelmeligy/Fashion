import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/pages/aboutPage.dart';
import 'package:project/widgets/gradeView.dart';

List imagees = [
  {
    "img": "assets/Rectangle 2.png",
    "title": "One Shoulder",
    "price": "10.00\$",
    'color': 'Peach'
  },
  {
    "img": "assets/Rectangle 3.png",
    "title": "Off Shoulder",
    "price": "10.00\$",
    'color': 'Cherry Red'
  },
  {
    "img": "assets/Rectangle 4.png",
    "title": "Crop Top",
    "price": "10.00\$",
    'color': 'Sky Blue'
  },
  {
    "img": "assets/Rectangle 5.png",
    "title": "Crop Top",
    "price": "10.00\$",
    'color': 'Peach'
  },
  {
    "img": "assets/Rectangle 2.png",
    "title": "Crop Top",
    "price": "10.00\$",
    'color': 'Sky Blue'
  },
];

Widget widgetOfPreferPage() => Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 150,
          childAspectRatio: 2,
        ),
        itemCount: imagees.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => about(data: item[i])));
            },
            ////////////////////////////////////////////////////

            child: Card(
              color: Color.fromRGBO(18, 1, 69, 0.848),
              child: Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        imagees[i]["img"],
                        width: 140,
                        height: 140,
                        fit: BoxFit.cover,
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        imagees[i]["title"],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      Text(
                        imagees[i]["price"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Size : XL",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text("Color : ${imagees[i]["color"]}",
                          style: TextStyle(
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
