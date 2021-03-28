import 'package:flutter/material.dart';
import 'package:ocean_project/desktopview/Components/onlineDb.dart';
import 'package:ocean_project/desktopview/Components/navigation_bar.dart';
import 'package:ocean_project/desktopview/Components/offlineDb.dart';
import 'package:ocean_project/desktopview/constants.dart';
import 'package:ocean_project/desktopview/screen/footer.dart';
import 'package:ocean_project/desktopview/screen/menubar.dart';

class OfflineCourseNew extends StatefulWidget {
  @override
  _OfflineCourseNewState createState() => _OfflineCourseNewState();
}

class _OfflineCourseNewState extends State<OfflineCourseNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(164),
        child: Navbar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/oa_bg.png'),
                        repeat: ImageRepeat.repeatY,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TopNavigationBar(
                            title: "Courses",
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.all(60.0),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       color: Colors.white,
                          //       boxShadow: [
                          //         BoxShadow(
                          //           color: Colors.black.withOpacity(0.1),
                          //           spreadRadius: 5,
                          //           blurRadius: 7,
                          //           offset: Offset(
                          //               0, 3), // changes position of shadow
                          //         ),
                          //       ],
                          //       borderRadius: BorderRadius.circular(30.0),
                          //     ),
                          //     // child: LayoutBuilder(
                          //     //     builder: (context, constraints) {
                          //     //       return ToggleButtons(
                          //     //           focusColor: Colors.white,
                          //     //           color: Color(0xff0091d2),
                          //     //           borderColor: Colors.white,
                          //     //           fillColor: Color(0xff0091d2),
                          //     //           borderWidth: 2,
                          //     //           selectedBorderColor: Color(0xff0091d2),
                          //     //           selectedColor: Colors.white,
                          //     //           borderRadius: BorderRadius.circular(30.0),
                          //     //           constraints: BoxConstraints.expand(
                          //     //               width: constraints.maxWidth / 2 -
                          //     //                   2 * 1.5,
                          //     //               height: 60.0),
                          //     //           children: [
                          //     //             Text(
                          //     //               'Offline Courses',
                          //     //               style: TextStyle(
                          //     //                   fontSize: 25,
                          //     //                   fontWeight: FontWeight.w500,
                          //     //                   fontFamily: kfontname),
                          //     //             ),
                          //     //             Text('Online Courses',
                          //     //                 style: TextStyle(
                          //     //                   fontSize: 25,
                          //     //                   fontFamily: kfontname,
                          //     //                   fontWeight: FontWeight.w500,
                          //     //                 )),
                          //     //           ],
                          //     //           onPressed: (int index) {
                          //     //             setState(() {
                          //     //               //selected = true;
                          //     //               for (int i = 0;
                          //     //               i < Course.isSelected.length;
                          //     //               i++) {
                          //     //                 Course.isSelected[i] = i == index;
                          //     //               }
                          //     //               //selected = false;
                          //     //               print(Course.isSelected);
                          //     //             });
                          //     //           },
                          //     //           isSelected: Course.isSelected);
                          //     //     }),
                          //   ),
                          // ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Center(
                                child: Wrap(
                                    runSpacing: 50.0,
                                    alignment: WrapAlignment.end,
                                    children: [
                                      OfflineCourseDb(),
                                    ]),
                              ),
                            ],
                          ),
                          Footer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
