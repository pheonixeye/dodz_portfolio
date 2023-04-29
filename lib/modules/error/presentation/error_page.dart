import 'package:dodz_portfolio/core/components/floating_action_buttons.dart';
import 'package:dodz_portfolio/core/extensions/locale_ext_fns.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.loc.errorPage),
      ),
      floatingActionButton: const FloatingActionButtonsArea(),
    );
  }
}
