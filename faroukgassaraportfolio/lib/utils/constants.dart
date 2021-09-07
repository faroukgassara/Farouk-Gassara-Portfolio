import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromARGB(21, 181, 114, 1);
const Color kBackGroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Colors.orange;
const Color kCaptionColor = Colors.green;

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
