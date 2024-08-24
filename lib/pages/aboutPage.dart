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
        body: ListView(
      children: [
        Image.asset(
          widget.data["image"],
          width: double.infinity,
        ),
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
      ],
    ));
  }
}
