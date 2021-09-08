import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MobileAppAd extends StatelessWidget {
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
    return Center(
      child: LayoutBuilder(
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
                      "assets/mobile.png",
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                    ),
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile Applications",
                          style: GoogleFonts.oswald(
                            color: kCaptionColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "CUSTOM MOBILE\nAPPLICATIONS",
                          style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Native or hybrid, for Android or IOS, a mobile application based on the latest technologies represent a real asset for your business. Different in its purpose from web applications, the mobile application is a base of your strategic development. With his scalable approach and thanks to its advanced functionalities, it presents a wildcard to develop your business, better understand and target your market.",
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                height: 48.0,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 28.0,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Center(
                                    child: Text(
                                      "EXPLORE MORE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
