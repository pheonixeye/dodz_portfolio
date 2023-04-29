import 'package:dodz_portfolio/core/localization/app_localizations.dart';
import 'package:flutter/material.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
