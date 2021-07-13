import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/home_screen.dart';
import 'package:test2/src/route/main_screens/n13_fadein_image_screen.dart';
import 'package:test2/src/route/main_screens/n14_stream_builder_screen.dart';
import 'package:test2/src/route/main_screens/n15_inherited_widget_screen.dart';
import 'package:test2/src/route/main_screens/sliver_screen.dart';
import 'package:test2/src/route/main_screens/unknown_screen.dart';
import 'package:test2/src/route/main_screens/welcome_screen.dart';

// #region 1. Declare page types
enum PageTypes {
  home,
  unknown,
  welcome,
  sliver_screen,
  n13_fadein_image,
  n14_stream_builder,
  n15_inherited_widget_screen,
}
// #endregion 1. Declare page types

class MyPage extends Page {
  static final defaultInfo =
      RouteInformation(location: MyPage.type2Location(PageTypes.home));
  final RouteInformation _info;
  MyPage({RouteInformation? info, LocalKey? key})
      : this._info = info ?? defaultInfo,
        super(key: key ?? ValueKey((info ?? defaultInfo).location));

  static String type2Location(PageTypes type) {
    if (type == PageTypes.home) {
      return '/';
    } else {
      final String buf = type.toString();
      return '/' + buf.substring(buf.indexOf('.') + 1);
    }
  }

  static RouteInformation type2Info(PageTypes type) {
    final location = type2Location(type);
    return RouteInformation(location: location);
  }

  static PageTypes location2Type(String? location) {
    if (location == null || location == '/' || location == '/home') {
      return PageTypes.home;
    } else {
      final types = PageTypes.values;
      for (var i0 = 0; i0 < types.length; i0++) {
        final type = types[i0];
        if (type == PageTypes.home) continue;
        if (location.contains(MyPage.type2Location(type))) {
          return type;
        }
      }
    }
    return PageTypes.unknown;
  }

  RouteInformation get info => this._info;

  @override
  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: _buildMyPageRoute,
    );
  }

// #region  2. Used to build related pages
  @visibleForTesting
  Widget buildMyPageRoute(BuildContext context) {
    return _buildMyPageRoute(context);
  }

  Widget _buildMyPageRoute(BuildContext context) {
    final type = location2Type(_info.location);
    Widget screen;
    switch (type) {
      case PageTypes.home:
        screen = HomeScreen();
        break;
      case PageTypes.welcome:
        screen = WelcomeScreen();
        break;
      case PageTypes.unknown:
        screen = UnknownScreen();
        break;
      case PageTypes.sliver_screen:
        screen = SliverScreen();
        break;
      case PageTypes.n13_fadein_image:
        screen = N13FadeInImageScreen();
        break;
      case PageTypes.n14_stream_builder:
        screen = N14StreamBuilderScreen();
        break;
      case PageTypes.n15_inherited_widget_screen:
        screen = N15InheritedWidgetScreen();
        break;
      default:
        screen = UnknownScreen();
    }

    return screen;
  }
// #endregion  2. Used to build related pages

}
