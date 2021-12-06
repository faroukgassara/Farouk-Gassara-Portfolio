import 'package:faroukgassaraportfolio/models/design_process.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

final List<DesignProcess> designProcesses = [
  DesignProcess(
    imagePath: "assets/html.png",
  ),
  DesignProcess(
    imagePath: "assets/java.png",
  ),
  DesignProcess(
    imagePath: "assets/javascript.png",
  ),
  DesignProcess(
    imagePath: "assets/angular.png",
  ),
  DesignProcess(
    imagePath: "assets/Csharp.png",
  ),
  DesignProcess(
    imagePath: "assets/mongodb.png",
  ),
  DesignProcess(
    imagePath: "assets/nodejs.png",
  ),
  DesignProcess(
    imagePath: "assets/flutter.png",
  ),
  DesignProcess(
    imagePath: "assets/react.png",
  ),
  DesignProcess(
    imagePath: "assets/sqlserver.png",
  ),
  DesignProcess(
    imagePath: "assets/symfony.png",
  ),
  DesignProcess(
    imagePath: "assets/spring.png",
  ),
];

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    return ResponsiveWrapper(
      maxWidth: width,
      minWidth: width,
      defaultScale: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "SKILLS",
                style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 30.0,
                  height: 1.3,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            child: LayoutBuilder(
              builder: (_context, constraints) {
                return ResponsiveGridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  alignment: Alignment.topCenter,
                  gridDelegate: ResponsiveGridDelegate(
                    maxCrossAxisExtent: constraints.maxWidth < 720.0
                        ? constraints.maxWidth / 3.0
                        : 100,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                designProcesses[index].imagePath,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: designProcesses.length,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
