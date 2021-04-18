// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/cupertino.dart' as _i5;

import '../../infrastructure/shopdata/data_entity.dart' as _i6;
import '../pages/detailpage.dart' as _i3;
import '../pages/homepage.dart' as _i4;
import '../splash/splashscreen.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Splashpage.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i2.Splashpage());
    },
    DetailRoute.name: (entry) {
      var args = entry.routeData.argsAs<DetailRouteArgs>();
      return _i1.MaterialPageX(
          entry: entry,
          child: _i3.DetailPage(key: args.key, shopData: args.shopData));
    },
    HomeRoute.name: (entry) {
      return _i1.MaterialPageX(entry: entry, child: _i4.HomePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(Splashpage.name, path: '/'),
        _i1.RouteConfig(DetailRoute.name, path: '/detail-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page')
      ];
}

class Splashpage extends _i1.PageRouteInfo {
  const Splashpage() : super(name, path: '/');

  static const String name = 'Splashpage';
}

class DetailRoute extends _i1.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({_i5.Key? key, required _i6.Datum shopData})
      : super(name,
            path: '/detail-page',
            args: DetailRouteArgs(key: key, shopData: shopData));

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, required this.shopData});

  final _i5.Key? key;

  final _i6.Datum shopData;
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}
