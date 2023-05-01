import 'package:dodz_portfolio/core/localization/bloc/language_bloc.dart';
import 'package:dodz_portfolio/core/routes/helpers/transition.dart';
import 'package:dodz_portfolio/core/routes/presentation/base_navigation_page.dart';
import 'package:dodz_portfolio/modules/admin/presentation/admin_page.dart';
import 'package:dodz_portfolio/modules/authentication/presentation/auth_page.dart';
import 'package:dodz_portfolio/modules/error/presentation/error_page.dart';
import 'package:dodz_portfolio/modules/homepage/presentation/homepage.dart';
import 'package:dodz_portfolio/modules/showcase/presentation/showcase_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'base',
        builder: (context, state) {
          return BaseNavigationPage(
            key: state.pageKey,
          );
        },
        redirect: (context, state) {
          if (state.fullpath == '/') {
            return '/en';
          }
          return null;
        },
        routes: [
          GoRoute(
            path: ':lang',
            name: 'homepage',
            builder: (context, state) {
              final lang = state.params['lang'] as String;
              final key = ValueKey(lang);
              context.read<LanguageBloc>().add(LanguageSelect(Locale(lang)));
              return Homepage(
                key: key,
              );
            },
            routes: [
              GoRoute(
                path: 'showcase',
                name: 'showcase',
                builder: (context, state) {
                  return ShowcasePage(
                    key: state.pageKey,
                  );
                },
              ),
              GoRoute(
                path: 'admin',
                name: 'admin',
                builder: (context, state) {
                  return AuthPage(
                    key: state.pageKey,
                  );
                },
                routes: [
                  GoRoute(
                    path: 'in',
                    name: 'in',
                    builder: (context, state) {
                      return AdminPage(
                        key: state.pageKey,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '404',
            name: 'Not Found',
            builder: (context, state) {
              return ErrorPage(
                key: state.pageKey,
              );
            },
          ),
        ],
      ),
    ],
  );
}
