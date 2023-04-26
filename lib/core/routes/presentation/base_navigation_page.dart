import 'package:flutter/material.dart';

class BaseNavigationPage extends StatelessWidget {
  const BaseNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('BaseNavigationPage'),
      ),
    );
  }
}
