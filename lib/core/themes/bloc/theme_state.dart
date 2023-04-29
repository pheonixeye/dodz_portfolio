part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {
  const ThemeState(this.themeMode, this.background);
  final ThemeMode themeMode;
  final String background;

  @override
  List<Object> get props => [themeMode];
}

class ThemeInitial extends ThemeState {
  const ThemeInitial(super.themeMode, super.background);
}

class ThemeChanged extends ThemeState {
  const ThemeChanged(super.themeMode, super.background);
}
