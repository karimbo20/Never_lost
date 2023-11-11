import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';

class FamilySearch extends StatelessWidget {
  const FamilySearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FamilyFinder(
            image: "assets/images/missing 3.jpg",
            title: "Ahmed Yassin",
            age: "6 years old",
            press: () {},
          ),
          FamilyFinder(
            image: "assets/images/missing 3.jpg",
            title: "Ahmed Yassin",
            age: "6 years old",
            press: () {},
          ),
          FamilyFinder(
            image: "assets/images/missing 3.jpg",
            title: "Ahmed Yassin",
            age: "6 years old",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FamilyFinder extends StatelessWidget {
  const FamilyFinder({
    Key? key,
    required this.image,
    required this.press,
    required this.title,
    required this.age,
  }) : super(key: key);

  final String image, title, age;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        child: Stack(
          children: <Widget>[
            Image.asset(
              image,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 3),
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
                    Icons.boy,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
