import 'package:dodz_portfolio/core/localization/bloc/language_bloc.dart';
import 'package:dodz_portfolio/core/themes/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FloatingActionButtonsArea extends StatelessWidget {
  const FloatingActionButtonsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {
              if (context.read<LanguageBloc>().state.locale.languageCode ==
                  'en') {
                GoRouter.of(context).go('/ar');
              } else {
                GoRouter.of(context).go('/en');
              }
            },
            child: const Icon(Icons.language),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            onPressed: () {
              context.read<ThemeBloc>().add(const ThemeChangeEvent());
            },
            child: const Icon(Icons.theater_comedy),
          ),
        ),
      ],
    );
  }
}
