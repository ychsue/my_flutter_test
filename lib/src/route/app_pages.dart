import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n13_fadein_image_screen.dart';
import 'package:test2/src/route/main_screens/n14_stream_builder_screen.dart';
import 'package:test2/src/route/main_screens/n15_inherited_widget_screen.dart';
import 'package:test2/src/route/main_screens/n16_clip_r_rect_screen.dart';
import 'package:test2/src/route/main_screens/n17/n17_first.dart';
import 'package:test2/src/route/main_screens/n17/n17_hero_screen.dart';
import 'package:test2/src/route/main_screens/n18/n18_custom_paint_screen.dart';
import 'package:test2/src/route/main_screens/n19_20_tooltip_fitted_box_screen.dart';
import 'package:test2/src/route/main_screens/n21_layout_builder.dart';
import 'package:test2/src/route/main_screens/n22_absorb_pointer.dart';
import 'package:test2/src/route/main_screens/n23_transform.dart';
import 'package:test2/src/route/main_screens/n24_backdrop_filter.dart';
import 'package:test2/src/route/main_screens/n25/n25_align.dart';
import 'package:test2/src/route/main_screens/n25/n26_positioned.dart';
import 'package:test2/src/route/main_screens/n27_animated_builder.dart';
import 'package:test2/src/route/main_screens/n28/n28_dismissible.dart';
import 'package:test2/src/route/main_screens/n29_sized_box.dart';
import 'package:test2/src/route/main_screens/n30/n30_rotate_animate.dart';
import 'package:test2/src/route/main_screens/n31_draggable.dart';
import 'package:test2/src/route/main_screens/n32/n32_animated_list.dart';
import 'package:test2/src/route/main_screens/n33_flexible.dart';
import 'package:test2/src/route/main_screens/n34_media_query.dart';
import 'package:test2/src/route/main_screens/n35_spacer.dart';
import 'package:test2/src/route/main_screens/n36/n36_inherited_widget.dart';
import 'package:test2/src/route/main_screens/n37_animated_icon.dart';
import 'package:test2/src/route/main_screens/n38_aspect_ratio.dart';
import 'package:test2/src/route/main_screens/n39_limited_box.dart';
import 'package:test2/src/route/main_screens/n40_placeholder.dart';
import 'package:test2/src/route/main_screens/n41_rich_text.dart';
import 'package:test2/src/route/main_screens/n42_reorderable_list_view.dart';
import 'package:test2/src/route/main_screens/n43_animated_switcher.dart';
import 'package:test2/src/route/main_screens/n44_animated_positioned.dart';
import 'package:test2/src/route/main_screens/n45_n46_animated_padding_and_indexed_stack.dart';
import 'package:test2/src/route/main_screens/n47_semantics.dart';
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
  n17_hero_screen,
  n17_first,
  n18_custom_paint,
  n19_tooltip,
  n21_layout_builder,
  n22_absorb_pointer,
  n23_transform,
  n24_backdrop_filter,
  n25_align,
  n26_positioned,
  n27_animated_builder,
  n28_dismissible,
  n29_sized_box,
  n30_value_listenable_builder,
  n31_draggable,
  n32_animated_list,
  n33_flexible,
  n34_media_query,
  n35_spacer,
  n36_inherited_widget,
  n37_animated_icon,
  n38_aspect_ratio,
  n39_limited_box,
  n40_placeholder,
  n41_rich_text,
  n42_reorderable_list_view,
  n43_animated_switcher,
  n44_animated_positioned,
  n45_n46_animated_padding_and_indexed_stack,
  n47_semantics,
}

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.n47_semantics.toLocation,
      page: () => N47SemanticsScreen(),
    ),
    GetPage(
      name: Routes.n45_n46_animated_padding_and_indexed_stack.toLocation,
      page: () => N45N46AnimatedPaddingAndIndexedStackScreen(),
    ),
    GetPage(
      name: Routes.n44_animated_positioned.toLocation,
      page: () => N44AnimatedPositionedScreen(),
    ),
    GetPage(
      name: Routes.n43_animated_switcher.toLocation,
      page: () => N43AnimatedSwitcherScreen(),
    ),
    GetPage(
      name: Routes.n42_reorderable_list_view.toLocation,
      page: () => N42ReorderableListViewScreen(),
    ),
    GetPage(
      name: Routes.n41_rich_text.toLocation,
      page: () => N41RichTextScreen(),
    ),
    GetPage(
      name: Routes.n40_placeholder.toLocation,
      page: () => N40PlaceholderScreen(),
    ),
    GetPage(
      name: Routes.n39_limited_box.toLocation,
      page: () => N39LimitedBoxScreen(),
    ),
    GetPage(
      name: Routes.n38_aspect_ratio.toLocation,
      page: () => N38AspectRatioScreen(),
    ),
    GetPage(
      name: Routes.n37_animated_icon.toLocation,
      page: () => N37AnimatedIconScreen(),
    ),
    GetPage(
      name: Routes.n36_inherited_widget.toLocation,
      page: () => N36InheritedWidgetScreen(),
    ),
    GetPage(
      name: Routes.n35_spacer.toLocation,
      page: () => N35SpacerScreen(),
    ),
    GetPage(
      name: Routes.n34_media_query.toLocation,
      page: () => N34MediaQueryScreen(),
    ),
    GetPage(
      name: Routes.n33_flexible.toLocation,
      page: () => N33FlexibleScreen(),
    ),
    GetPage(
      name: Routes.n32_animated_list.toLocation,
      page: () => N32AnimatedListScreen(),
    ),
    GetPage(
      name: Routes.n31_draggable.toLocation,
      page: () => N31DraggableScreen(),
    ),
    GetPage(
      name: Routes.n30_value_listenable_builder.toLocation,
      page: () => N30RotateAnimate(),
    ),
    GetPage(
      name: Routes.n29_sized_box.toLocation,
      page: () => N29SizedBoxScreen(),
    ),
    GetPage(
      name: Routes.n28_dismissible.toLocation,
      page: () => N28DismissibleScreen(),
    ),
    GetPage(
      name: Routes.n27_animated_builder.toLocation,
      page: () => N27AnimatedBuilderScreen(),
    ),
    GetPage(
      name: Routes.n26_positioned.toLocation,
      page: () => N26PositionedScreen(),
    ),
    GetPage(
      name: Routes.n25_align.toLocation,
      page: () => N25Align(),
    ),
    GetPage(
      name: Routes.n24_backdrop_filter.toLocation,
      page: () => N24BackdropFilterScreen(),
    ),
    GetPage(
      name: Routes.n23_transform.toLocation,
      page: () => N23TransformScreen(),
    ),
    GetPage(
      name: Routes.n22_absorb_pointer.toLocation,
      page: () => N22AbsorbPointer(),
    ),
    GetPage(
      name: Routes.n21_layout_builder.toLocation,
      page: () => N21LayoutBuilderScreen(),
    ),
    GetPage(
      name: Routes.n19_tooltip.toLocation,
      page: () => N19TooltipScreen(),
    ),
    GetPage(
        name: Routes.n18_custom_paint.toLocation,
        page: () => N18CustomPaintScreen()),
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
    GetPage(
        name: Routes.n17_hero_screen.toLocation, page: () => N17HeroScreen()),
    GetPage(name: Routes.n17_first.toLocation, page: () => N17First()),
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
