import 'package:dodz_portfolio/core/components/floating_action_buttons.dart';
import 'package:dodz_portfolio/core/themes/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, themeState) {
              return Opacity(
                opacity: 0.8,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'svg/subtle-prism-${themeState.background}-min.jpg',
                    fit: BoxFit.cover,
                    matchTextDirection: true,
                  ),
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButtonsArea(),
    );
  }
}
