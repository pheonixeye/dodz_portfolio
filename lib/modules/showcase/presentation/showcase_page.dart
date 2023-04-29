import 'package:dodz_portfolio/core/extensions/locale_ext_fns.dart';
import 'package:flutter/material.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.loc.showcasePage),
      ),
    );
  }
}
