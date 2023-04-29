import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitial(ThemeMode.light, 'light')) {
    on<ThemeChangeEvent>((event, emit) {
      if (state.themeMode == ThemeMode.light) {
        emit(const ThemeChanged(ThemeMode.dark, 'dark'));
      } else {
        emit(const ThemeChanged(ThemeMode.light, 'light'));
      }
    });
  }
}
