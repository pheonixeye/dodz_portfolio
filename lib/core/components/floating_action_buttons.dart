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
            heroTag: 'language',
            onPressed: () {
              final location = GoRouter.of(context).location;
              final paths = location.split(RegExp('/'));
              paths.removeAt(0);
              paths.removeAt(0);
              final whereToGo = paths.join('/');
              if (context.read<LanguageBloc>().state.locale.languageCode ==
                  'en') {
                GoRouter.of(context).go('/ar/$whereToGo');
              } else {
                GoRouter.of(context).go('/en/$whereToGo');
              }
            },
            child: const Icon(Icons.language),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            heroTag: 'theme',
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
