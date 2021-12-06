import 'package:faroukgassaraportfolio/models/carousel_item_model.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Hello World, My name is",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          Text(
            "FAROUK\nGASSARA",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Software Engineer Student",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  color: Colors.white,
                  icon: FaIcon(FontAwesomeIcons.linkedin),
                  onPressed: _launchURLlin,
                ),
                IconButton(
                  color: Colors.white,
                  icon: FaIcon(FontAwesomeIcons.facebook),
                  onPressed: _launchURLfb,
                ),
                IconButton(
                  color: Colors.white,
                  icon: FaIcon(FontAwesomeIcons.instagram),
                  onPressed: _launchURLin,
                ),
                IconButton(
                  color: Colors.white,
                  icon: FaIcon(FontAwesomeIcons.github),
                  onPressed: _launchgit1,
                ),
                IconButton(
                  color: Colors.white,
                  icon: FaIcon(FontAwesomeIcons.github),
                  onPressed: _launchgit2,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/person.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
);
_launchURLlin() async {
  const url = 'https://tn.linkedin.com/in/farouk-gassara-588035149/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLfb() async {
  const url = 'https://www.facebook.com/FaroukGassaraa/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURLin() async {
  const url = 'https://www.instagram.com/faroukgassaraa/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchgit1() async {
  const url = 'https://github.com/faroukgassara/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchgit2() async {
  const url = 'https://github.com/faroukgasara/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
