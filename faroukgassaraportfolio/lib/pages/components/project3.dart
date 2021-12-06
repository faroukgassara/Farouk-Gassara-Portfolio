import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Project3 extends StatefulWidget {
  const Project3({Key key}) : super(key: key);

  @override
  _Project3State createState() => _Project3State();
}

class _Project3State extends State<Project3> {
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
                            "assets/ecrans.png",
                            width: constraints.maxWidth > 720.0 ? null : 350.0,
                            height: 300.0,
                          ),
                        ),
                        Expanded(
                          flex: constraints.maxWidth > 720.0 ? 1 : 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "Academic Project",
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
                                "A professional social network that facilitates contacts between the members of this network(employees,companies) An integrated project consists of 3 Technologies: JAVA(JavaFX),WEB(Symfony),Mobile(CodeNameOne)",
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
            SizedBox(
              height: 30.0,
            ),
            Text(
              "ACTIVITIES AND COURSES",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
