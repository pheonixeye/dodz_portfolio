import 'package:dodz_portfolio/core/extensions/locale_ext_fns.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(context.loc.adminPage),
      ),
    );
  }
}
