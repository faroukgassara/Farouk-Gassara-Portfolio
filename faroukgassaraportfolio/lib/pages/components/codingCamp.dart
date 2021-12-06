import 'package:carousel_slider/carousel_slider.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Camp extends StatefulWidget {
  const Camp({Key key}) : super(key: key);

  @override
  _CampState createState() => _CampState();
}

class _CampState extends State<Camp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Container(
      alignment: Alignment.center,
      child: ResponsiveWrapper(
        maxWidth: width,
        minWidth: width,
        defaultScale: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return ResponsiveWrapper(
                  maxWidth: width,
                  minWidth: width,
                  defaultScale: false,
                  child: Container(
                    child: Flex(
                      direction: constraints.maxWidth > 720
                          ? Axis.horizontal
                          : Axis.vertical,
                      children: [
                        Expanded(
                          flex: constraints.maxWidth > 720.0 ? 1 : 0,
                          child: Image.asset(
                            "assets/camp.jpg",
                            width: constraints.maxWidth > 720.0 ? null : 350.0,
                            height: 400.0,
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Expanded(
                          flex: constraints.maxWidth > 720.0 ? 1 : 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CodingCamp",
                                style: GoogleFonts.oswald(
                                  color: kCaptionColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                "It was a great experience to participate in this amazing coding competition in the middle of the wood organized by ESEN Android Club",
                                style: TextStyle(
                                  color: kCaptionColor,
                                  height: 1.5,
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
