import 'package:faroukgassaraportfolio/pages/components/Skills.dart';
import 'package:faroukgassaraportfolio/pages/components/Tools.dart';
import 'package:faroukgassaraportfolio/pages/components/carousel.dart';
import 'package:faroukgassaraportfolio/pages/components/codingCamp.dart';
import 'package:faroukgassaraportfolio/pages/components/cv_section.dart';
import 'package:faroukgassaraportfolio/pages/components/educationsection.dart';
import 'package:faroukgassaraportfolio/pages/components/footer.dart';
import 'package:faroukgassaraportfolio/pages/components/formation1.dart';
import 'package:faroukgassaraportfolio/pages/components/formation2.dart';
import 'package:faroukgassaraportfolio/pages/components/header.dart';
import 'package:faroukgassaraportfolio/pages/components/mobileappad.dart';
import 'package:faroukgassaraportfolio/pages/components/project.dart';
import 'package:faroukgassaraportfolio/pages/components/project2.dart';
import 'package:faroukgassaraportfolio/pages/components/project3.dart';
import 'package:faroukgassaraportfolio/pages/components/skillsection.dart';
import 'package:faroukgassaraportfolio/pages/components/tedx.dart';
import 'package:faroukgassaraportfolio/pages/components/testimonial.dart';
import 'package:faroukgassaraportfolio/pages/components/webappad.dart';
import 'package:faroukgassaraportfolio/utils/constants.dart';
import 'package:faroukgassaraportfolio/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final scrollDirection = Axis.vertical;

  AutoScrollController controller;
  List<List<int>> randomList;
  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

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
                  return ListTile(
                    title: TextButton(
                      onPressed: () => _scrollToIndex(index),
                      child: Text(
                        headerItems[index].title,
                        style: TextStyle(color: Colors.white),
                      ),
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
          scrollDirection: scrollDirection,
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AutoScrollTag(
                key: ValueKey(0),
                controller: controller,
                index: 0,
                child: Container(
                  child: Carousel(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 20.0,
              ),
              AutoScrollTag(
                key: ValueKey(1),
                controller: controller,
                index: 1,
                child: Container(
                  child: CvSection(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 20.0,
              ),
              AutoScrollTag(
                key: ValueKey(2),
                controller: controller,
                index: 2,
                child: Container(
                  child: Skills(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 20.0,
              ),
              AutoScrollTag(
                key: ValueKey(3),
                controller: controller,
                index: 3,
                child: Container(
                  child: Tools(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              AutoScrollTag(
                key: ValueKey(4),
                controller: controller,
                index: 4,
                child: Container(
                  child: MobileAppAd(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 70.0,
              ),
              AutoScrollTag(
                key: ValueKey(5),
                controller: controller,
                index: 5,
                child: Container(
                  child: WebAppAd(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 50.0,
              ),
              AutoScrollTag(
                key: ValueKey(6),
                controller: controller,
                index: 6,
                child: Container(
                  child: EducationSection(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 50.0,
              ),
              AutoScrollTag(
                key: ValueKey(7),
                controller: controller,
                index: 7,
                child: Container(
                  child: Projects(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 50.0,
              ),
              ProjectPI(),
              SizedBox(
                height: 50.0,
              ),
              Project3(),
              SizedBox(
                height: 50.0,
              ),
              AutoScrollTag(
                key: ValueKey(8),
                controller: controller,
                index: 8,
                child: Container(
                  child: FormationI(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 50.0,
              ),
              Camp(),
              SizedBox(
                height: 50.0,
              ),
              TedxMan(),
              SizedBox(
                height: 50.0,
              ),
              AutoScrollTag(
                key: ValueKey(9),
                controller: controller,
                index: 9,
                child: Container(
                  child: SkillSection(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              SizedBox(
                height: 50.0,
              ),
              AutoScrollTag(
                key: ValueKey(10),
                controller: controller,
                index: 10,
                child: Container(
                  child: TestimonialWidget(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
              AutoScrollTag(
                key: ValueKey(11),
                controller: controller,
                index: 11,
                child: Container(
                  child: Footer(),
                ),
                highlightColor: Colors.black.withOpacity(0.1),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _scrollToIndex(index) async {
    await controller.scrollToIndex(index,
        preferPosition: AutoScrollPosition.begin);
  }
}
