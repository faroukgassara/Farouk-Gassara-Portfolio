import 'package:flutter/material.dart';

const Color kPrimaryColor = Colors.green;
const Color kBackGroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);
const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);

const Color yellow = Color(0xfff7c844);
const Color bColor = Color(0xfff8f7f3);
const Color bgSideMenu = Color(0xff131e29);

const defaultPadding = 16.0;
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
