import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/widgets/widgetOfPreferPage.dart';

class preferPage extends StatelessWidget {
  const preferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        title: Text(
          'Wishlist',
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(8, 0, 32, 1),
      ),
      body: Container(
        color: Color.fromRGBO(8, 0, 32, 1),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  widgetOfPreferPage(),
                ],
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Color.fromRGBO(8, 0, 32, 1),
                      ),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromRGBO(8, 0, 32, 1),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
