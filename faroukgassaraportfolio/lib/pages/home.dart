import 'package:faroukgassaraportfolio/pages/components/carousel.dart';
import 'package:faroukgassaraportfolio/pages/components/cv_section.dart';
import 'package:faroukgassaraportfolio/pages/components/educationsection.dart';
import 'package:faroukgassaraportfolio/pages/components/footer.dart';
import 'package:faroukgassaraportfolio/pages/components/header.dart';
import 'package:faroukgassaraportfolio/pages/components/mobileappad.dart';
import 'package:faroukgassaraportfolio/pages/components/skillsection.dart';
import 'package:faroukgassaraportfolio/pages/components/testimonial.dart';
import 'package:faroukgassaraportfolio/pages/components/webappad.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/globals.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return headerItems[index].isButton
                      ? MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            decoration: BoxDecoration(
                                color: kDangerColor,
                                borderRadius: BorderRadius.circular(8.0)),
                            padding: EdgeInsets.symmetric(horizontal: 28.0),
                            child: TextButton(
                              onPressed: headerItems[index].onTap,
                              child: Text(
                                headerItems[index].title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      : ListTile(
                          title: Text(
                            headerItems[index].title,
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10.0);
                },
                itemCount: headerItems.length),
          ),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Header(),
              ),
              Carousel(),
              SizedBox(
                height: 20.0,
              ),
              CvSection(),
              MobileAppAd(),
              SizedBox(
                height: 70.0,
              ),
              WebAppAd(),
              SizedBox(
                height: 50.0,
              ),
              EducationSection(),
              SizedBox(
                height: 50.0,
              ),
              SkillSection(),
              SizedBox(
                height: 50.0,
              ),
              TestimonialWidget(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
