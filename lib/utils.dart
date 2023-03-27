import 'package:flutter/material.dart';

double screenWidthOfRatio(BuildContext context, double ratio) =>
    MediaQuery.of(context).size.width * ratio;
double screenHeightOfRatio(BuildContext context, double ratio) =>
    MediaQuery.of(context).size.height * ratio;
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
TextStyle textStyle(Color? color, double? size, FontWeight? weight) =>
    TextStyle(
        color: color ?? Colors.white,
        fontSize: size ?? 14,
        fontWeight: weight ?? FontWeight.normal);
Future<dynamic> navigateTo(BuildContext context, Widget page) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return page;
    }));

class Spacing {
  SizedBox horizontalSpace(double width) => SizedBox(
        width: width,
      );
  SizedBox verticalSpace(double height) => SizedBox(
        height: height,
      );
  SizedBox horizontalSpaceOfRatio(BuildContext context, double ratio) =>
      SizedBox(
        width: screenWidthOfRatio(context, ratio),
      );
  SizedBox verticalSpaceOfRatio(BuildContext context, double ratio) => SizedBox(
        height: screenHeightOfRatio(context, ratio),
      );
}
