import 'package:flutter/widgets.dart';

import 'pages/home.dart';
import 'pages/splash_page.dart';

import 'pages/list/list.dart';
import 'pages/list/list_view_vertical.dart';
import 'pages/list/list_view_horizontal.dart';
import 'pages/list/list_tile_page.dart';

import 'pages/navigator/source.dart';
import 'pages/navigator/multiple_arg.dart';
import 'pages/navigator/single_arg.dart';

import 'pages/grid/count.dart';
import 'pages/grid/extent.dart';
import 'pages/grid/builder.dart';
import 'pages/grid/tile.dart';

import 'pages/database/note_home.dart';

import 'example/shared_pref_counter.dart';

class AppRoutes {
  static const String SPLASHPAGE = "/";
  static const String HOMEPAGE = "/home";

  static const String LISTPAGE = "/list";
  static const String LISTVIEWVERTICALPAGE = "/list_view_vertical";
  static const String LISTVIEWHORIZONTALPAGE = "/list_view_horizontal";
  static const String LISTTILEPAGE = "/list_tile";

  static const String SOURCEPAGE = "/source";
  static const String SINGLEARGPAGE = "/single_arg";
  static const String MULTIPLEARGPAGE = "/multiple_arg";

  static const String GRIDCOUNTPAGE = "/grid_count";
  static const String GRIDEXTENTPAGE = "/grid_extent";
  static const String GRIDBUILDERPAGE = "/grid_builder";
  static const String GRIDTILEPAGE = "/grid_tile";

  static const String NOTEPAGE = "/note";

  static const String SHAREDPREFCOUNTER = "/shared_pref_counter";

  static Map<String, Widget Function(BuildContext)> pageRoutes() => {
    SPLASHPAGE: (_) => SplashPage(),
    HOMEPAGE: (_) => HomePage(),
    LISTPAGE: (_) => ListPage(),

    LISTVIEWVERTICALPAGE: (_) => ListViewVerticalPage(),
    LISTVIEWHORIZONTALPAGE: (_) => ListViewHorizontalPage(),
    LISTTILEPAGE: (_) => ListTilePage(),

    SOURCEPAGE: (_) => SourcePage(),
    SINGLEARGPAGE: (_) => SingleArgPage(),
    MULTIPLEARGPAGE: (_) => MultipleArg(),

    GRIDCOUNTPAGE: (_) => GridCountPage(),
    GRIDEXTENTPAGE: (_) => GridExtentPage(),
    GRIDBUILDERPAGE: (_) => GridBuilderPage(),
    GRIDTILEPAGE: (_) => GridTilePage(),

    SHAREDPREFCOUNTER: (_) => SharePrefCounter(),

    NOTEPAGE: (_) => NoteHomePage(),
  };
}
