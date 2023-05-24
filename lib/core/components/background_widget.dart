import 'package:dodz_portfolio/core/components/floating_action_buttons.dart';
import 'package:dodz_portfolio/core/components/navigation_bar.dart';
import 'package:dodz_portfolio/core/themes/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const WebNavigationBar(),
      body: Stack(
        children: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/svg/subtle-prism-${themeState.background}-min.jpg'),
                    fit: BoxFit.cover,
                    matchTextDirection: true,
                  ),
                ),
                child: SafeArea(child: child),
              );
            },
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButtonsArea(),
    );
  }
}
