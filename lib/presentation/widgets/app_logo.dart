import 'package:portfolio/values/values.dart';
import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({
    Key? key,
    this.title = "DC",
    this.titleColor = black,
    this.titleStyle,
    this.fontSize = 60,
  }) : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final Color titleColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Text(
      title,
      style: titleStyle ??
          textTheme.headline2?.copyWith(
            color: titleColor,
            fontSize: fontSize,
          ),
    );
  }
}
