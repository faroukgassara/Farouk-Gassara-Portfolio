import 'package:carousel_slider/carousel_slider.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Projects extends StatefulWidget {
  const Projects({Key key}) : super(key: key);

  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
            Text(
              "WORK EXPERIENCE",
              style: GoogleFonts.oswald(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                height: 1.3,
                fontSize: 35.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
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
                            "assets/clinisys.jpg",
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
                                "Multiplatform mobile application : Medical practice management",
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
                                "This project was developed as part of the end-of-study project within CliniSys",
                                style: GoogleFonts.oswald(
                                  color: kPrimaryColor,
                                  height: 2,
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                "I used Flutter,Nodejs and SqlServer to develop this application.This application allows to establish the organization and automation of the management of the medical practice, in order to increase the reliability and efficiency of human effort and facilitate the tedious tasks inside and outside the doctor's office. it also allows the patient to chat with the doctor ",
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
