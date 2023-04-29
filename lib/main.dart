import 'dart:convert';

import 'package:dodz_portfolio/core/bloc/bloc.dart';
import 'package:dodz_portfolio/core/localization/app_localizations.dart';
import 'package:dodz_portfolio/core/localization/bloc/language_bloc.dart';
import 'package:dodz_portfolio/core/routes/routes.dart';
import 'package:dodz_portfolio/core/themes/bloc/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:json_theme/json_theme.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final lightStr = await rootBundle.loadString('assets/themes/light.json');
  final darkStr = await rootBundle.loadString('assets/themes/dark.json');
  final themeJsonLight = jsonDecode(lightStr);
  final themeJsonDark = jsonDecode(darkStr);
  final light = ThemeDecoder.decodeThemeData(themeJsonLight);
  final dark = ThemeDecoder.decodeThemeData(themeJsonDark);

  runApp(
    MultiBlocProvider(
      providers: providers,
      child: MyApp(
        themes: {
          "light": light,
          "dark": dark,
        },
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.themes});

  final Map<String, ThemeData?> themes;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageBloc, LanguageState>(
      builder: (context, languageState) {
        return BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, themeState) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'Dr. Deraz Portfolio',
              theme: themes['light'],
              darkTheme: themes['dark'],
              themeMode: themeState.themeMode,
              localizationsDelegates: const [
                AppLocalizations.delegate, // # Add this line
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en', ''),
                Locale('ar', ''),
              ],
              locale: languageState.locale,
              routerConfig: Routes.router,
            );
          },
        );
      },
    );
  }
}
