import 'package:flutter/material.dart';
import 'package:never_lost/screens/home/components/family_search.dart';
import 'package:never_lost/screens/home/components/header_with_searchbox.dart';
import 'package:never_lost/screens/home/components/missing_people.dart';
import 'package:never_lost/screens/home/components/plus_button.dart';
import 'package:never_lost/screens/home/components/title_with_more_btn.dart';
import 'package:never_lost/constansts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enables scrolling on small devices
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithSearchBox(size: size),
              TitleWithMoreBtn(title: "Missing People", press: () {}),
              MissingPeople(),
              TitleWithMoreBtn(title: "Family Finder", press: () {}),
              FamilySearch(),
              SizedBox(height: kDefaultPadding),
            ],
          ),
        ),
        // Figma Flutter Generator Group3429Widget - GROUP as Button
        Positioned(
          bottom: 16.0, // Adjust the bottom value as needed
          right: 16.0, // Adjust the left value as needed
          child: PlusButton(),
        ),
      ],
    );
  }
}
