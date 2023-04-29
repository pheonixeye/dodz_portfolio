import 'app_localizations.dart';

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get homePage => 'الرئيسية';

  @override
  String get errorPage => 'صفحة غير موجودة';

  @override
  String get showcasePage => 'المعرض';

  @override
  String get authPage => 'الدخول';

  @override
  String get adminPage => 'لوحة التحكم';
}
