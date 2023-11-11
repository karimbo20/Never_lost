import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';

import 'package:never_lost/screens/missing_page/component/header_and_searchbox.dart';

import 'package:never_lost/screens/missing_page/component/missing_box.dart';

class Body extends StatelessWidget {
  List<Map<String, dynamic>> cat = [
    {"category": "Location"},
    {"category": "Date Missed"},
    {"category": "Age Range"}
  ];

  Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It will provide us the total height and width of our screen
    Size size = MediaQuery.of(context).size;

    // It enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderAndSearchBox(size: size),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: kDefaultPadding * 0.05,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cat.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.only(right: 20),
                  color: kBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      cat[index]["category"],
                      style: TextStyle(color: kTextColor),
                    ),
                  ),
                );
              },
            ),
          ),
          // Figma Flutter Generator Group3426Widget - GROUP
          MissingBox(),
        ],
      ),
    );
  }
}
