import 'package:dodz_portfolio/core/routes/presentation/base_navigation_page.dart';
import 'package:dodz_portfolio/modules/admin/presentation/admin_page.dart';
import 'package:dodz_portfolio/modules/authentication/presentation/auth_page.dart';
import 'package:dodz_portfolio/modules/homepage/presentation/homepage.dart';
import 'package:dodz_portfolio/modules/showcase/presentation/showcase_page.dart';
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
              return Homepage(
                key: state.pageKey,
              );
            },
          ),
          GoRoute(
            path: ':lang/showcase',
            name: 'showcase',
            builder: (context, state) {
              return ShowcasePage(
                key: state.pageKey,
              );
            },
          ),
          GoRoute(
            path: ':lang/admin',
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
    ],
  );
}
