import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';
import 'package:never_lost/screens/details/details_screen.dart';
import 'package:never_lost/screens/home/components/header_with_searchbox.dart';
import 'package:never_lost/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Missing People",
            press: () {},
          ),
          MissingPeople(),
        ],
      ),
    );
  }
}

class MissingPeople extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Missing(
            image: "assets/images/missing 2.png",
            title: "Rolla Ahmed",
            age: "6 years old",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
          Missing(
            image: "assets/images/missing 2.png",
            title: "Rolla Ahmed",
            age: "6 years old",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
          Missing(
            image: "assets/images/missing 2.png",
            title: "Rolla Ahmed",
            age: "6 years old",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class Missing extends StatelessWidget {
  const Missing({
    Key? key,
    required this.image,
    required this.title,
    required this.age,
    required this.press,
  }) : super(key: key);

  final String image, title, age;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$age",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.girl,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
