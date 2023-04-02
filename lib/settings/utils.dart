import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils.dart';

class Components {
  Widget toggleOptions(
          {required BuildContext context,
          required String title,
          required String subtitle,
          required Widget child}) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidthOfRatio(context, 0.04)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: screenHeightOfRatio(context, 0.13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          title,
                          style: textStyle(Colors.black, 16, FontWeight.bold),
                        ),
                        Container(
                            width: screenWidthOfRatio(context, 0.7),
                            child: Text(subtitle,
                                style: textStyle(
                                    Color.fromARGB(255, 63, 63, 63),
                                    14,
                                    FontWeight.normal)))
                      ],
                    ),
                  ),
                  child
                ]),
          ),
        ),
      );
}
