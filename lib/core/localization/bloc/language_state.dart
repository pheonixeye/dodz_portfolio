part of 'language_bloc.dart';

abstract class LanguageState extends Equatable {
  const LanguageState(this.locale);
  final Locale locale;
  @override
  List<Object> get props => [locale];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial(super.locale);
}

class LanguageChanged extends LanguageState {
  const LanguageChanged(super.locale);
}
