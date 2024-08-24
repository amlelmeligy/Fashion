import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/pages/buyPage.dart';
import 'package:project/pages/homePage.dart';
import 'package:project/pages/preferPage.dart';
import 'package:project/pages/profilePage.dart';
import 'package:project/pages/searchPage.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  final screens = [
    homePage(),
    searchPage(),
    buyPage(),
    preferPage(),
    profilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        indicatorColor: Color.fromRGBO(8, 0, 32, 1),
        backgroundColor: Color.fromRGBO(8, 0, 32, 1),
        selectedIndex: index,
        onDestinationSelected: (index) => setState(
          () => this.index = index,
        ),
        height: 56,
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home_rounded,
              color: const Color.fromARGB(255, 255, 255, 255),
              size: 27,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              color: const Color.fromARGB(255, 255, 255, 255),
              Icons.search,
              size: 27,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              color: const Color.fromARGB(255, 255, 255, 255),
              Icons.shopping_bag,
              size: 27,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.white,
            ),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
