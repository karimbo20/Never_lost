import 'package:flutter/material.dart';

import 'package:never_lost/screens/details/components/description_text.dart';
import 'package:never_lost/screens/details/components/detail_image.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // AppBar
          AppBar(
            leading: IconButton(
              onPressed: () {
                // Handle back button press
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
          // Content
          detailImage(size: size),
          DescriptionText(size: size),
        ],
      ),
    );
  }
}
