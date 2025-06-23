import 'package:flutter/widgets.dart';

import 'pages/home.dart';
import 'pages/splash_page.dart';

import 'pages/list/list.dart';
import 'pages/list/list_view_vertical.dart';
import 'pages/list/list_view_horizontal.dart';
import 'pages/list/list_tile_page.dart';

import 'pages/grid/count.dart';
import 'pages/grid/extent.dart';
import 'pages/grid/builder.dart';
import 'pages/grid/tile.dart';

import 'example/shared_pref_counter.dart';

class AppRoutes {
  static const String SPLASHPAGE = "/";
  static const String HOMEPAGE = "/home";

  static const String LISTPAGE = "/list";
  static const String LISTVIEWVERTICALPAGE = "/list_view_vertical";
  static const String LISTVIEWHORIZONTALPAGE = "/list_view_horizontal";
  static const String LISTTILEPAGE = "/list_tile";

  static const String GRIDCOUNTPAGE = "/grid_count";
  static const String GRIDEXTENTPAGE = "/grid_extent";
  static const String GRIDBUILDERPAGE = "/grid_builder";
  static const String GRIDTILEPAGE = "/grid_tile";

  static const String SHAREDPREFCOUNTER = "/shared_pref_counter";

  static Map<String, Widget Function(BuildContext)> pageRoutes() => {
    SPLASHPAGE: (_) => SplashPage(),
    HOMEPAGE: (_) => HomePage(),
    LISTPAGE: (_) => ListPage(),

    LISTVIEWVERTICALPAGE: (_) => ListViewVerticalPage(),
    LISTVIEWHORIZONTALPAGE: (_) => ListViewHorizontalPage(),
    LISTTILEPAGE: (_) => ListTilePage(),

    GRIDCOUNTPAGE: (_) => GridCountPage(),
    GRIDEXTENTPAGE: (_) => GridExtentPage(),
    GRIDBUILDERPAGE: (_) => GridBuilderPage(),
    GRIDTILEPAGE: (_) => GridTilePage(),

    SHAREDPREFCOUNTER: (_) => SharePrefCounter(),
  };
}
