import 'package:flutter/material.dart';

class MissingBox extends StatelessWidget {
  const MissingBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 325,
        height: 132,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 325,
                  height: 132,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(11),
                      topRight: Radius.circular(11),
                      bottomLeft: Radius.circular(11),
                      bottomRight: Radius.circular(11),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.05999999865889549),
                          offset: Offset(1, 0),
                          blurRadius: 10)
                    ],
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 9,
              left: 11,
              child: Container(
                  width: 115,
                  height: 113,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 115,
                            height: 113,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                                bottomRight: Radius.circular(12),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        35, 129, 215, 0.28999999165534973),
                                    offset: Offset(0, 11.051470756530762),
                                    blurRadius: 25.78676414489746)
                              ],
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Rectangle992.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                  ]))),
          Positioned(
              top: 22,
              left: 139,
              child: Container(
                decoration: BoxDecoration(),
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(243, 245, 248, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Nasr City, Cairo',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(36, 107, 252, 1),
                                fontFamily: 'Roboto',
                                fontSize: 11,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Layla Hossam',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 9, 41, 1),
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Missing Date: 12/05/2023',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(123, 127, 144, 1),
                          fontFamily: 'Roboto',
                          fontSize: 11,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Age range: 0-3',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(55, 55, 55, 1),
                          fontFamily: 'Roboto',
                          fontSize: 11,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 16,
              left: 96,
              child: Container(
                  width: 21,
                  height: 21,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 21,
                            height: 21,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(21, 21)),
                            ))),
                    const Positioned(
                        top: 4,
                        left: 4,
                        child: Text(
                          '👩‍🦰',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Roboto',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
        ]));
  }
}
