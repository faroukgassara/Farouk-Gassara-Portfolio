import 'package:carousel_slider/carousel_slider.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ProjectPI extends StatefulWidget {
  const ProjectPI({Key key}) : super(key: key);

  @override
  _ProjectPIState createState() => _ProjectPIState();
}

class _ProjectPIState extends State<ProjectPI> {
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Development of a web application for technical and digital services (Skills assessment, Recruitment)",
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
                          "This project was developed as part of the summer internship project within PIXIMIND",
                          style: GoogleFonts.oswald(
                            color: kPrimaryColor,
                            height: 2,
                            fontSize: 15.0,
                          ),
                        ),
                        Text(
                          "I used Reactjs,Nestjs and MongoDb to develop this application.this project offers Among the advantages of online recruitment, and the overall digitization of the company, the different stages of recruitment are made easier. It is no longer rare to have a video phone interview. To select candidates, it is also possible to have them sit the exams online. Therefore, the candidate does not have to travel.",
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Image.asset(
                      "assets/web.jpg",
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                      height: 400.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
