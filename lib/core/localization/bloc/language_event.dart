part of 'language_bloc.dart';

abstract class LanguageEvent extends Equatable {
  const LanguageEvent(this.locale);
  final Locale locale;

  @override
  List<Object> get props => [locale];
}

class LanguageSelect extends LanguageEvent {
  const LanguageSelect(super.locale);
}
