import 'package:flutter/material.dart';

class CverticalDivider extends StatelessWidget {
  const CverticalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      width: 10,
      thickness: 5,
      indent: 3,
      endIndent: 3,
    );
  }
}

class ChorizontalDivider extends StatelessWidget {
  const ChorizontalDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10,
      thickness: 5,
      indent: 3,
      endIndent: 3,
    );
  }
}
