// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:modular_navigation/screens/a.dart' as _i1;
import 'package:modular_navigation/screens/b.dart' as _i2;
import 'package:modular_navigation/screens/home.dart' as _i3;

/// generated route for
/// [_i1.AScreen]
class ARoute extends _i4.PageRouteInfo<void> {
  const ARoute({List<_i4.PageRouteInfo>? children})
      : super(
          ARoute.name,
          initialChildren: children,
        );

  static const String name = 'ARoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.AScreen();
    },
  );
}

/// generated route for
/// [_i2.BPage]
class BRoute extends _i4.PageRouteInfo<void> {
  const BRoute({List<_i4.PageRouteInfo>? children})
      : super(
          BRoute.name,
          initialChildren: children,
        );

  static const String name = 'BRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.BPage();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}
