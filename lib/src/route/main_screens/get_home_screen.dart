import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../app_pages.dart';

class GetHomeScreen extends StatelessWidget {
  const GetHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.n68_snack_bar.toLocation),
                  child: Text("N68 SnackBar")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n67_drawer.toLocation),
                  child: Text("N67 Drawer")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n66_default_tab_bar_view.toLocation),
                  child:
                      Text("N66 DefaultTabController, TabBar and TabBarView")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.n65_image.toLocation),
                  child: Text("N65 Image")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(
                      Routes.n64_tween_animation_builder.toLocation),
                  child: Text("N64 TweenAnimationBuilder")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n63_cupertino_action_sheet.toLocation),
                  child: Text("N63 CupertinoActionSheet")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n62_toggle_buttons.toLocation),
                  child: Text("N62 ToggleButtons")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n61_color_filtered.toLocation),
                  child: Text("N61 ColorFiltered")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n60_graggable_scrollable_sheet.toLocation),
                  child: Text("N60 DraggableScrollableSheet")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n59_animated_cross_fade.toLocation),
                  child: Text("N59 AnimatedCrossFade")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n58_alert_dialog.toLocation),
                  child: Text("N58 AlertDialog")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.n57_slider.toLocation),
                  child: Text("N57 Slider")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n56_data_table.toLocation),
                  child: Text("N56 DataTable")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n54_n55_container_n_selectable_text.toLocation),
                  child: Text("N54&N55 Container and SelectableText")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n52_53_list_view_n_list_tile.toLocation),
                  child: Text("N52&53 ListView & ListTile")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n51_fractionally_sized_box.toLocation),
                  child: Text("N51 FractionallySizedBox")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n50_animated_opacity.toLocation),
                  child: Text("N50 AnimatedOpacity")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n49_stack.toLocation),
                  child: Text("N49 Stack")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n48_constrained_box.toLocation),
                  child: Text("N48 ConstrainedBox")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.n47_semantics.toLocation),
                  child: Text("N47 Semantics")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes
                      .n45_n46_animated_padding_and_indexed_stack.toLocation),
                  child: Text("N45 AnimatedPadding & N46 IndexedStack")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n44_animated_positioned.toLocation),
                  child: Text("N44 AnimatedPositioned")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n43_animated_switcher.toLocation),
                  child: Text("N43 AnimatedSwitcher")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n42_reorderable_list_view.toLocation),
                  child: Text("N42 ReorderableListView")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.n41_rich_text.toLocation),
                  child: Text("N41 RichText")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n40_placeholder.toLocation),
                  child: Text("N40 Placeholder")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n39_limited_box.toLocation),
                  child: Text("N39 LimitedBox")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n38_aspect_ratio.toLocation),
                  child: Text("N38 AspectRatio")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n37_animated_icon.toLocation),
                  child: Text("N37 AnimatedIcon")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n36_inherited_widget.toLocation),
                  child: Text("N36 InheritedWidget")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n35_spacer.toLocation),
                  child: Text("N35 Spacer")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n34_media_query.toLocation),
                  child: Text("N34 MediaQuery")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n33_flexible.toLocation),
                  child: Text("N33 Flexible")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n32_animated_list.toLocation),
                  child: Text("N32 AnimatedList")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n31_draggable.toLocation),
                  child: Text("N31 Draggable")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n30_value_listenable_builder.toLocation),
                  child: Text("N30 ValueListenableBuilder")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n29_sized_box.toLocation),
                  child: Text("N29 SizedBox")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n28_dismissible.toLocation),
                  child: Text("N28 Dismissible")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n27_animated_builder.toLocation),
                  child: Text("N27 AnimatedController")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n26_positioned.toLocation),
                  child: Text("N26 Positioned")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n25_align.toLocation),
                  child: Text("N25 Align")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n24_backdrop_filter.toLocation),
                  child: Text("N24 BackdropFilter")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n23_transform.toLocation),
                  child: Text("N23 Transform")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n22_absorb_pointer.toLocation),
                  child: Text("N22 AbsorbPointer")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n21_layout_builder.toLocation),
                  child: Text("N21 LayoutBuilder")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.n19_tooltip.toLocation),
                  child: Text("N19 Tooltip")),
            ),

            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n18_custom_paint.toLocation),
                  child: Text("N18 CustomPaint")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n17_hero_screen.toLocation),
                  child: Text("N17 Hero")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n16_clip_r_rect.toLocation),
                  child: Text("N16 ClipRRect")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(
                      Routes.n15_inherited_widget_screen.toLocation),
                  child: Text("N15 InheritedWidget")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n14_stream_builder.toLocation),
                  child: Text("N14 StreamBuilder")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () =>
                      Get.toNamed(Routes.n13_fadein_image.toLocation),
                  child: Text("N13 FadeInImage")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.sliver_screen.toLocation),
                  child: Text("Sliver")),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () => Get.toNamed(Routes.welcome.toLocation),
                  child: Text("Welcome")),
            ),
            TextButton(
                onPressed: () => Get.toNamed(Routes.unknown.toLocation),
                child: Text("Unknown"))
          ],
        ),
      )),
    );
  }
}
