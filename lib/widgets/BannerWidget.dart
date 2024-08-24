import 'package:flutter/material.dart';
import 'package:project/pages/homePage.dart';

class BannarWidget extends StatelessWidget {
  final AppBanner appBanner;

  const BannarWidget({
    Key? key,
    required this.appBanner,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(appBanner.thumbnaiUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.white, fontSize: 16),
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: double.infinity,
                  child: Text(
                    appBanner.title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 28,
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class AppBanner {
  final int id;
  final String title;
  final String thumbnaiUrl;

  AppBanner(this.id, this.title, this.thumbnaiUrl);
}

List<AppBanner> appBannerList = [
  AppBanner(1, "Wear the real \n Fashion", "assets/4.jpg"),
  AppBanner(1, "Wear the real \n Fashion", "assets/2.jpg"),
  AppBanner(2, "Wear the real \n Fashion", "assets/1.jpg"),
];
