import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Wishlist',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          backgroundColor: Color.fromRGBO(8, 0, 32, 1),
        ),
        body: Container(
          color: Color.fromRGBO(8, 0, 32, 1),
          child: Center(
              child: Text(
            'Wishlist',
          )),
        ));
  }
}
