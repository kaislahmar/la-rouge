

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

bool itemexist = false;
dynamic foundeditem;

RestoreDataFirstLevel() {}


///
class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TextEditingController textController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    TabController DiscoverTabController =
    TabController(length: 4, vsync: this);
    String x = MediaQuery.of(context).padding.top.toString();
    double safeArea = double.parse(x);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  top: safeArea + 0.0.sh, left: 0.05.sw, right: 0.05.sw),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {

                        },
                        child: FaIcon(
                          FontAwesomeIcons.barsStaggered,
                          size: 0.05.sw,
                          color: Colors.black45,
                        ),
                      ),
                      SizedBox(
                        width: 0.02.sw,
                      ),

                    ],
                  ),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      width: 0.1.sw,
                      height: 0.1.sw,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Icon(CupertinoIcons.qrcode_viewfinder),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 0.0.sh,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      //
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //
                          //
                          //
                          //
                          SizedBox(height: 0.02.sh),
                       
                          SizedBox(height: 0.02.sh),

                          SizedBox(height: 0.03.sh),

                          //tabBar
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(
                                  labelPadding: EdgeInsets.only(
                                      left: 0.05.sw, right: 0.05.sw),
                                  indicatorSize: TabBarIndicatorSize.label,
                                  controller: DiscoverTabController,
                                  labelColor: AppColors.purpleColor,
                                  labelStyle: GoogleFonts.lato(
                                      fontSize: 0.018.sh,
                                      fontWeight: FontWeight.w700),
                                  isScrollable: true,
                                  unselectedLabelColor: Colors.grey,
                                  indicatorPadding: EdgeInsets.only(
                                      left: 0.05.sw, right: 0.05.sw),
                                  unselectedLabelStyle: GoogleFonts.lato(
                                      fontSize: 0.018.sh,
                                      fontWeight: FontWeight.w700),
                                  indicator: CircleTabIndicator(
                                      color: AppColors.purpleColor,
                                      radius: 5
                                  ),
                                  tabs: [
                                    Tab(
                                        child: Container(
                                          child: Text(
                                            'Your Categories',
                                            style: GoogleFonts.spaceMono(),
                                          ),
                                        )),
                                    Tab(
                                        child: Container(
                                          child: Text('Popular ',
                                              style: GoogleFonts.spaceMono()),
                                        )),
                                    Tab(
                                        child: Container(
                                          child: Text('Recommended',
                                              style: GoogleFonts.spaceMono()),
                                        )),
                                    Tab(
                                        child: Container(
                                          child: Text('New Destination ',
                                              style: GoogleFonts.spaceMono()),
                                        )),
                                  ]),
                            ),
                          ),

                          //tab bar view
                          Container(
                            margin: EdgeInsets.only(left: 0.02.sw),
                            height: 0.3.sh,
                            width: double.maxFinite,
                            child: TabBarView(
                                physics: BouncingScrollPhysics(),
                                controller: DiscoverTabController,
                                children: [
                                  //prefers places
                             Container(
                               width: 0.5.sw,
                               height: 0.2.sh,
                               color: AppColors.purpleColor,
                               margin: EdgeInsets.symmetric(horizontal:5 ),
                             ), //Popular Place
                                  Container(
                                    width: 0.5.sw,
                                    height: 0.2.sh,
                                    color: AppColors.purpleColor,
                                    margin: EdgeInsets.symmetric(horizontal:5 ),
                                  ),
                                  Container(
                                    width: 0.5.sw,
                                    height: 0.2.sh,
                                    color: AppColors.purpleColor,
                                    margin: EdgeInsets.symmetric(horizontal:5 ),
                                  ),
                                  Container(
                                    width: 0.5.sw,
                                    height: 0.2.sh,
                                    color: AppColors.purpleColor,
                                    margin: EdgeInsets.symmetric(horizontal:5 ),
                                  ) ]),
                          ), //

                          Container(
                            margin: EdgeInsets.only(
                                left: 0.05.sw, right: 0.05.sw, top: 0.03.sh),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Explore more',
                                  style: GoogleFonts.playfairDisplay(
                                      fontSize: 0.027.sh,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 0.02.sh),

                          ///
                          ///
                          ///
                          ///

                          ///
                          ///
                          ///
                        ]),
                    SizedBox(
                      height: 0.1.sh,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset =
    Offset(configuration.size!.width / 2, configuration.size!.height);
    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
