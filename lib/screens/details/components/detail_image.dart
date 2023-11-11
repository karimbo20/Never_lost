import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';

class detailImage extends StatelessWidget {
  const detailImage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      width: size.width * 0.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 60,
            color: kPrimaryColor.withOpacity(0.29),
          ),
        ],
        image: DecorationImage(
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          image: AssetImage("assets/images/missing 2.png"),
        ),
      ),
      // You can add other content/widgets here if needed
    );
  }
}
