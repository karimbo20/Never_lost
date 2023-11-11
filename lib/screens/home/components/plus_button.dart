import 'package:flutter/material.dart';
import 'package:never_lost/constansts.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle the button press action here
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Choose',
              style: TextStyle(color: kPrimaryColor),
            ),
            content: SizedBox(
              width: 188,
              height: 137,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 44,
                    left: 1,
                    child: Container(
                      width: 186,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 239, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 18,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        // Handle "Report a missing person" option press
                        print("Report a missing person pressed");
                      },
                      child: const Text(
                        'Report a missing person',
                        style: TextStyle(
                          color: Color.fromRGBO(24, 111, 242, 1),
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 84,
                    left: 1,
                    child: Container(
                      width: 186,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 239, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 58,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        // Handle "Find My Family" option press
                        print("Find My Family pressed");
                      },
                      child: const Text(
                        'Find My Family',
                        style: TextStyle(
                          color: Color.fromRGBO(24, 111, 242, 1),
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 127,
                    left: 1,
                    child: Container(
                      width: 186,
                      height: 1,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 239, 255, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 101,
                    left: 16,
                    child: GestureDetector(
                      onTap: () {
                        // Handle "File a report" option press
                        print("File a report pressed");
                      },
                      child: const Text(
                        'File a report',
                        style: TextStyle(
                          color: Color.fromRGBO(24, 111, 242, 1),
                          fontFamily: 'Sora',
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      child: SizedBox(
        width: 68,
        height: 75,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 6,
              right: 0,
              child: Container(
                width: 68,
                height: 66,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      color: kPrimaryColor,
                      offset: Offset(0, 2),
                      blurRadius: 15,
                    ),
                  ],
                  color: Color.fromRGBO(243, 248, 254, 1),
                  border: Border.all(
                    color: Color.fromRGBO(25, 110, 238, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 6,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  // Handle "+" press action
                  print("Plus Button Pressed!");
                },
                child: Container(
                  width: 68,
                  height: 66,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromRGBO(243, 248, 254, 0),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Color.fromRGBO(24, 111, 242, 1),
                        fontFamily: 'Sora',
                        fontSize: 60,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
