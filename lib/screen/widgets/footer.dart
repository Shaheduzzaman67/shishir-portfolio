import 'package:portfolio/const/adaptive.dart';
import 'package:portfolio/screen/widgets/simple_footer.dart';
import 'package:portfolio/presentation/widgets/animated_bubble_button.dart';
import 'package:portfolio/presentation/widgets/animated_positioned_text.dart';
import 'package:portfolio/presentation/widgets/animated_positioned_widget.dart';
import 'package:portfolio/const/spaces.dart';
import 'package:portfolio/values/values.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../contact/contact_page.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
    this.backgroundColor = grey600,
  }) : super(key: key);

  final Color backgroundColor;

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double circleImageSize = responsiveSize(context, 100, 150);
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle? style = textTheme.bodyText1?.copyWith(
      color: accentColor,
      fontSize: Sizes.TEXT_SIZE_14,
    );
    TextStyle? titleStyle = textTheme.headline4?.copyWith(
      color: accentColor,
      fontSize: responsiveSize(
        context,
        Sizes.TEXT_SIZE_30,
        Sizes.TEXT_SIZE_60,
        medium: Sizes.TEXT_SIZE_50,
      ),
    );
    TextStyle? subtitleStyle = style?.copyWith(
      color: white,
      fontSize: Sizes.TEXT_SIZE_18,
      fontWeight: FontWeight.w400,
    );

    return Container(
      height: 450,
      padding: EdgeInsets.only(top: 20, bottom: 20),
      color: widget.backgroundColor,
      child: VisibilityDetector(
        key: Key('animated-footer'),
        onVisibilityChanged: (visibilityInfo) {
          double visiblePercentage = visibilityInfo.visibleFraction * 100;
          if (visiblePercentage > 25) {
            controller.forward();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2),
            Container(
              height: circleImageSize,
              child: Column(
                children: [
                  Center(
                    child: AnimatedPositionedText(
                      text: WORK_TOGETHER,
                     
                      textAlign: TextAlign.center,
                      textStyle: titleStyle,
                      controller: CurvedAnimation(
                        parent: controller,
                        curve: Curves.fastOutSlowIn,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            AnimatedPositionedText(
              text: AVAILABLE_FOR_JOB,
              textAlign: TextAlign.center,
              textStyle: subtitleStyle,
              factor: 2.0,
              controller: CurvedAnimation(
                parent: controller,
                curve: Curves.fastOutSlowIn,
              ),
            ),
            SpaceH40(),
            CircularButton(
              title: SAY_HI,
              onTap: () {
                Navigator.pushNamed(context, ContactPage.contactPageRoute);
              },
            ),
            Spacer(flex: 3),
            ResponsiveBuilder(
              builder: (context, sizingInformation) {
                double screenWidth = sizingInformation.screenSize.width;
                if (screenWidth <= RefinedBreakpoints().tabletNormal) {
                  return Column(
                    children: [
                      SimpleFooterSm(),
                      SpaceH8(),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      SimpleFooterLg(),
                      SpaceH8(),
                    ],
                  );
                }
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
