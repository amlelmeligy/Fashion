import 'package:flutter/material.dart';
import 'package:project/widgets/gradeView.dart';
import 'package:project/widgets/textformfieldWidget.dart';

class buyPage extends StatefulWidget {
  const buyPage({super.key});

  @override
  State<buyPage> createState() => _buyPageState();
}

class _buyPageState extends State<buyPage> {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    borderRadius: BorderRadius.circular(10),
                    hint: Text(
                      "Categories",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    items: const [
                      DropdownMenuItem(child: Text("Shoes"), value: "Shoes"),
                      DropdownMenuItem(
                          child: Text("Jackets"), value: "Jackets"),
                      DropdownMenuItem(
                        child: Text("Summer"),
                        value: "Summer",
                      ),
                      DropdownMenuItem(child: Text("Beach"), value: "Beach"),
                      DropdownMenuItem(child: Text("Home"), value: "Home"),
                      DropdownMenuItem(
                        child: Text("Red"),
                        value: "Red",
                      ),
                      DropdownMenuItem(child: Text("Long"), value: "Long"),
                      DropdownMenuItem(child: Text("Gym"), value: "Tops"),
                      DropdownMenuItem(
                        child: Text("Hoddies"),
                        value: "Hoddies",
                      ),
                      DropdownMenuItem(child: Text("Dress"), value: "Dress"),
                      DropdownMenuItem(child: Text("Skirts"), value: "Skirts"),
                      DropdownMenuItem(
                        child: Text("Shirt"),
                        value: "Shirt",
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        print(value);
                      });
                    },
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.list,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.wallet,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
            GradeView(ontap: () {})
          ],
        ),
      ),
    );
  }
}
