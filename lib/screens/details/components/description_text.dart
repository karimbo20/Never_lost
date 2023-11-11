import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Assuming DetailImage is the widget
        SizedBox(height: 20), // Adjust the spacing as needed
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Rolla Ahmed\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: kTextColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "show map",
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10), // Add some space between lines
            ],
          ),
        ),
        SizedBox(height: 10), // Adjust the spacing as needed
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Gender\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 25,
                          color: kTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "Female",
                style: TextStyle(
                  fontSize: 20,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add some space between lines
            ],
          ),
        ),
        SizedBox(height: 10), // Adjust the spacing as needed
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Location\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 25,
                          color: kTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "Nasr City, Cairo",
                style: TextStyle(
                  fontSize: 20,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add some space between lines
            ],
          ),
        ),
        SizedBox(height: 10), // Adjust the spacing as needed
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Date Missed\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 25,
                          color: kTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "12/05/2015",
                style: TextStyle(
                  fontSize: 20,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ], // Add more lines as needed
          ),
        ),
        SizedBox(height: 10), // Adjust the spacing as needed
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Cloth Found\n",
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontSize: 25,
                          color: kTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                "Blue Jeans, Red Shirt",
                style: TextStyle(
                  fontSize: 20,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ], // Add more lines as needed
          ),
        ),
      ],
    );
  }
}
