part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState(this.themeMode);
  final ThemeMode themeMode;

  @override
  List<Object> get props => [themeMode];
}

class ThemeInitial extends ThemeState {
  const ThemeInitial(super.themeMode);
}

class ThemeChanged extends ThemeState {
  const ThemeChanged(super.themeMode);
}
