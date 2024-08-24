import 'package:flutter/material.dart';

class about extends StatefulWidget {
  final data;
  const about({super.key, this.data});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.grey[700]),
          backgroundColor: Colors.grey[300],
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shop_2_outlined,
                color: Color.fromARGB(255, 53, 45, 124),
              ),
              Text(
                " Store",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ///////////////////////////////////////////////////////////////////////
        ),
        body: ListView(
          children: [
            Image.asset(widget.data["image"]),
            Container(
                padding: EdgeInsets.only(top: 5),
                alignment: Alignment.center,
                child: Text(
                  widget.data["name"],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),

            Container(
                padding: EdgeInsets.only(top: 10, bottom: 25),
                alignment: Alignment.center,
                child: Text(
                  widget.data["price"],
                  style: TextStyle(
                      color: Color.fromARGB(255, 53, 45, 124),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),

            ///////////////////////////////////////////////////////////////
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "color : ",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 53, 45, 124),
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color.fromARGB(255, 53, 45, 124),
                          )),
                    ),
                  ),
                  Text("  Purple"),
                  Container(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color.fromARGB(255, 53, 45, 124),
                          )),
                    ),
                  ),
                  Text("  Grey"),
                  Container(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Color.fromARGB(255, 53, 45, 124),
                          )),
                    ),
                  ),
                  Text("  Black"),
                ],
              ),
            ),

            Container(
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 72, 165),
                  borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.only(top: 50, left: 70, right: 70),
              child: TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Icon(
                      Icons.check_circle,
                      size: 80,
                      color: Color.fromARGB(255, 78, 72, 165),
                    ),
                    content: Container(
                      alignment: Alignment.center,
                      height: 100,
                      child: Column(
                        children: [
                          const Text(
                            'Done !',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 15),
                            child: const Text(
                              'Have fun with us in your store',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                child: const Text(
                  'Add To Cart',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
