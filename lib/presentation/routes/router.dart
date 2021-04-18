import 'package:assignment/presentation/pages/detailpage.dart';
import 'package:assignment/presentation/pages/homepage.dart';
import 'package:assignment/presentation/splash/splashscreen.dart';
import 'package:auto_route/annotations.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Splashpage, initial: true),
    AutoRoute(page: DetailPage),
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
