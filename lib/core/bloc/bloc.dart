import 'package:dodz_portfolio/core/localization/bloc/language_bloc.dart';
import 'package:dodz_portfolio/core/themes/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

final List<SingleChildWidget> providers = [
  BlocProvider<ThemeBloc>(
    create: (BuildContext context) => ThemeBloc(),
  ),
  BlocProvider<LanguageBloc>(
    create: (BuildContext context) => LanguageBloc(),
  ),
];
