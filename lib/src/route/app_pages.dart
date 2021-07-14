import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n13_fadein_image_screen.dart';
import 'package:test2/src/route/main_screens/n14_stream_builder_screen.dart';
import 'package:test2/src/route/main_screens/n15_inherited_widget_screen.dart';
import 'package:test2/src/route/main_screens/n16_clip_r_rect_screen.dart';
import 'package:test2/src/route/main_screens/sliver_screen.dart';
import 'package:test2/src/route/main_screens/unknown_screen.dart';
import 'package:test2/src/route/main_screens/welcome_screen.dart';

import 'main_screens/get_home_screen.dart';

enum Routes {
  home,
  unknown,
  welcome,
  sliver_screen,
  n13_fadein_image,
  n14_stream_builder,
  n15_inherited_widget_screen,
  n16_clip_r_rect,
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home.toLocation,
      page: () => GetHomeScreen(),
    ),
    GetPage(name: Routes.unknown.toLocation, page: () => UnknownScreen()),
    GetPage(name: Routes.welcome.toLocation, page: () => WelcomeScreen()),
    GetPage(name: Routes.sliver_screen.toLocation, page: () => SliverScreen()),
    GetPage(
        name: Routes.n13_fadein_image.toLocation,
        page: () => N13FadeInImageScreen()),
    GetPage(
        name: Routes.n14_stream_builder.toLocation,
        page: () => N14StreamBuilderScreen()),
    GetPage(
        name: Routes.n15_inherited_widget_screen.toLocation,
        page: () => N15InheritedWidgetScreen()),
    GetPage(
        name: Routes.n16_clip_r_rect.toLocation,
        page: () => N16ClipRRectScreen()),
  ];
}

extension Type2Location on Routes {
  String get toLocation {
    if (this == Routes.home) {
      return '/';
    } else {
      final String buf = this.toString();
      return '/' + buf.substring(buf.indexOf('.') + 1);
    }
  }
}
