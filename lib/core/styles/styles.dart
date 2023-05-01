import 'package:dodz_portfolio/core/extensions/is_mobile.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle subtitleTextStyle(BuildContext context) => TextStyle(
        fontSize: isMobile(context) ? 18 : 26,
        color: Colors.white,
        decorationColor: Colors.amber,
        decorationStyle: TextDecorationStyle.wavy,
        shadows: const [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 3,
            spreadRadius: 3,
            color: Colors.amber,
          ),
        ],
      );
  static TextStyle titleTextStyle(BuildContext context) => TextStyle(
        fontSize: isMobile(context) ? 20 : 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        decorationColor: Colors.amber,
        decorationStyle: TextDecorationStyle.wavy,
        shadows: const [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 3,
            spreadRadius: 3,
            color: Colors.amber,
          ),
        ],
      );
}
