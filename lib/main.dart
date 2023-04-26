import 'dart:convert';

import 'package:dodz_portfolio/core/bloc/bloc.dart';
import 'package:dodz_portfolio/core/localization/app_localizations.dart';
import 'package:dodz_portfolio/core/routes/routes.dart';
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Dr. Deraz Portfolio',
      theme: themes['light'],
      darkTheme: themes['dark'],
      themeMode: ThemeMode.dark,
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
      locale: const Locale('ar', ''),
      routerConfig: Routes.router,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
