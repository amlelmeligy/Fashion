import 'package:flutter/material.dart';

List imagees = [
  {"img": "assets/Frame 8.png", "title": "Tops"},
  {"img": "assets/Frame 9.png", "title": "Skirts"},
  {"img": "assets/Frame 13.png", "title": "Dress"},
  {"img": "assets/Frame 8.png", "title": "Skirts"},
  {"img": "assets/Frame 9.png", "title": "Tops"},
];

Widget CardPage() => Container(
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
            // onTap: () {
            //   Navigator.of(context).push(MaterialPageRoute(
            //       builder: (context) => about(data: item[i])));
            // },
            //////////////////////////////////////////////////////

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
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        imagees[i]["title"],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Explore",
                          style: TextStyle(
                            color: Color.fromRGBO(8, 0, 32, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
//////////////
// Column(
//               children: [
//                 Stack(
//                   children: [
//                     Card(
//                       color: const Color.fromARGB(255, 255, 255, 255),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 255, 255, 255),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         padding: EdgeInsets.all(20),
//                         child: Image.asset(
//                           imagees[i]['img'],
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     // IconButton(
//                     //   onPressed: ontap,
//                     //   icon: FaIcon(
//                     //     tap == false
//                     //         ? FontAwesomeIcons.heart
//                     //         : FontAwesomeIcons.heartCircleBolt,
//                     //   ),
//                     // )
//                   ],
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 5),
//                   child: Text(
//                     imagees[i]["title"],
//                     style: TextStyle(
//                       fontSize: 19,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 2,
//                 ),
//                 // Text(
//                 //   imagees[i]["price"],
//                 //   style: TextStyle(
//                 //       fontSize: 15,
//                 //       color: Color.fromARGB(255, 255, 255, 255),
//                 //       fontWeight: FontWeight.bold),
//                 // )
//               ],
//             ),