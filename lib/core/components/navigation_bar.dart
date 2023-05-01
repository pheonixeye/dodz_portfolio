import 'package:dodz_portfolio/core/extensions/locale_ext_fns.dart';
import 'package:dodz_portfolio/core/localization/bloc/language_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WebNavigationBar extends StatelessWidget implements PreferredSizeWidget {
  const WebNavigationBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(
        kToolbarHeight,
      );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          'assets/svg/icon-192.png',
          height: 40,
          width: 40,
        ),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      toolbarOpacity: 0.0,
      bottomOpacity: 0.0,
      centerTitle: false,
      surfaceTintColor: Colors.transparent,
      actions: [
        TextButton(
          child: Text(context.loc.homePage),
          onPressed: () {
            GoRouter.of(context).go(
                '/${context.read<LanguageBloc>().state.locale.languageCode}');
          },
        ),
        TextButton(
          child: Text(context.loc.showcasePage),
          onPressed: () {
            GoRouter.of(context).go(
                '/${context.read<LanguageBloc>().state.locale.languageCode}/showcase');
          },
        ),
      ],
    );
  }
}
