import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import '../app_pages.dart';

class GetHomeScreen extends StatefulWidget {
  const GetHomeScreen({Key? key}) : super(key: key);

  @override
  State<GetHomeScreen> createState() => _GetHomeScreenState();
}

class _GetHomeScreenState extends State<GetHomeScreen> {
  final _cQuery = [].obs;

  late Worker queryWorker;

  @override
  void initState() {
    queryWorker = debounce(
      _cQuery,
      (value) {},
      time: Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  void dispose() {
    queryWorker.dispose();
    super.dispose();
  }

  bool checkQuery(String data) {
    final query = _cQuery.value;
    if (query.length == 0) return true;
    return query.any((element) => data.toLowerCase().contains(element));
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            actions: [
              Icon(Icons.search),
            ],
            title: Container(
              color: Colors.yellow,
              child: TextField(
                onChanged: (value) {
                  if (value != "") {
                    _cQuery.value = value.toLowerCase().split(" ");
                  } else {
                    _cQuery.value = [];
                  }
                },
              ),
            ),
          ),
          body: Center(
              child: Container(
            child: ListView(
              children: [
                if (checkQuery(Routes.n117_safearea.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n117_safearea.toLocation),
                        child: Text("N117 SafeArea")),
                  ),
                if (checkQuery(Routes.n116_floating_action_button.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n116_floating_action_button.toLocation),
                        child: Text("N116 FloatingActionButton")),
                  ),
                if (checkQuery(Routes.n115_page_view.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n115_page_view.toLocation),
                        child: Text("N115 PageView")),
                  ),
                if (checkQuery(Routes.n114_table_with_wrap.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n114_table_with_wrap.toLocation),
                        child: Text("N114 Table with Wrap")),
                  ),
                if (checkQuery(Routes.n113_grid_view.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n113_grid_view.toLocation),
                        child: Text("N113 GridView")),
                  ),
                if (checkQuery(Routes.n112_switch_list_tile.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n112_switch_list_tile.toLocation),
                        child: Text("N112 SwitchListTile")),
                  ),
                if (checkQuery(Routes.n111_location_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n111_location_pkg.toLocation),
                        child: Text("N111 Location package")),
                  ),
                if (checkQuery(Routes.n110_device_info_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n110_device_info_pkg.toLocation),
                        child: Text("N110 Device_info_plus package")),
                  ),
                if (checkQuery(Routes.n109_image_filtered.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n109_image_filtered.toLocation),
                        child: Text("N109 ImageFiltered")),
                  ),
                if (checkQuery(Routes.n108_badges_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n108_badges_pkg.toLocation),
                        child: Text("N108 Badge Package")),
                  ),
                if (checkQuery(
                    Routes.n107_physical_model_with_opacity.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(
                            Routes.n107_physical_model_with_opacity.toLocation),
                        child: Text("N107 PhysicalModel with Opacity")),
                  ),
                if (checkQuery(Routes.n106_get_it_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n106_get_it_pkg.toLocation),
                        child: Text("N106 GetIt Package")),
                  ),
                if (checkQuery(Routes.n105_baseline.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n105_baseline.toLocation),
                        child: Text("N105 Baseline")),
                  ),
                if (checkQuery(
                    Routes.n104_animation_pkg_open_container.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes
                            .n104_animation_pkg_open_container.toLocation),
                        child: Text(
                            "N104 Material Animations Package:: OpenContainer")),
                  ),
                if (checkQuery(Routes.n103_slidable_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n103_slidable_pkg.toLocation),
                        child: Text("N103 Slidable Package")),
                  ),
                if (checkQuery(Routes.n102_rotated_box.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n102_rotated_box.toLocation),
                        child: Text("N102 RotatedBox")),
                  ),
                if (checkQuery(Routes.n101_expansion_panel.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n101_expansion_panel.toLocation),
                        child:
                            Text("N101 ExpansionPanel and ExpansionPanelList")),
                  ),
                if (checkQuery(Routes.n100_scrollbar_with_expanded.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(
                            Routes.n100_scrollbar_with_expanded.toLocation),
                        child: Text("N100 Scrollbar with Expanded")),
                  ),
                if (checkQuery(Routes.n99_connectivity_plus_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n99_connectivity_plus_pkg.toLocation),
                        child: Text("N99 Connectivity_Plus Package")),
                  ),
                if (checkQuery(Routes.n98_animated_text_kit_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n98_animated_text_kit_pkg.toLocation),
                        child: Text("N98 AnimatedTextKit package")),
                  ),
                if (checkQuery(Routes.n97_mouse_region.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n97_mouse_region.toLocation),
                        child: Text("N97 MouseRegion")),
                  ),
                if (checkQuery(Routes.n96_sensors_plus_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n96_sensors_plus_pkg.toLocation),
                        child: Text("N96 Sensors_plus package")),
                  ),
                if (checkQuery(Routes.n95_hero_mode.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n95_hero_mode.toLocation),
                        child: Text("N95 HeroMode")),
                  ),
                if (checkQuery(Routes.n94_html_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n94_html_pkg.toLocation),
                        child: Text("N94 Html Package")),
                  ),
                if (checkQuery(Routes.n93_refresh_indicator.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n93_refresh_indicator.toLocation),
                        child: Text("N93 RefreshIndicator")),
                  ),
                if (checkQuery(Routes.n92_font_awesome.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n92_font_awesome.toLocation),
                        child: Text("N92 FontAwesome")),
                  ),
                if (checkQuery(Routes.n91_flow.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n91_flow.toLocation),
                        child: Text("N91 Flow")),
                  ),
                if (checkQuery(Routes.n90_tab_page_selector.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n90_tab_page_selector.toLocation),
                        child: Text("N90 TabPageSelector")),
                  ),
                if (checkQuery(Routes.n89_theme.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n89_theme.toLocation),
                        child: Text("N89 Theme")),
                  ),
                if (checkQuery(Routes.n88_cached_network_image.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n88_cached_network_image.toLocation),
                        child: Text("N88 CachedNetworkImage")),
                  ),
                if (checkQuery(Routes.n87_gesture_detector.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n87_gesture_detector.toLocation),
                        child: Text("N87 GestureDetector")),
                  ),
                if (checkQuery(Routes.n86_freezed_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n86_freezed_pkg.toLocation),
                        child: Text("N86 Freezed Package")),
                  ),
                if (checkQuery(Routes.n85_path_provider_pkg_with_future_builder
                    .toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        // With FutureBuilder
                        onPressed: () => Get.toNamed(Routes
                            .n85_path_provider_pkg_with_future_builder
                            .toLocation),
                        child: Text("N85 Path_Provider package")),
                  ),
                if (checkQuery(Routes.n84_url_launcher.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n84_url_launcher.toLocation),
                        child: Text("N84 package url_launcher")),
                  ),
                if (checkQuery(Routes.n83_async_pkg.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n83_async_pkg.toLocation),
                        child: Text("N83 Async Package")),
                  ),
                if (checkQuery(Routes.n82_about_dialog.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n82_about_dialog.toLocation),
                        child: Text("N82 AboutDialog")),
                  ),
                if (checkQuery(Routes.n81_checkbox_list_tile.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n81_checkbox_list_tile.toLocation),
                        child: Text("N81 CheckboxListTile")),
                  ),
                if (checkQuery(Routes.n80_padding.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n80_padding.toLocation),
                        child: Text("N80 Padding")),
                  ),
                if (checkQuery(Routes.n79_animated_widget.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n79_animated_widget.toLocation),
                        child: Text("N79 AnimatedWidget")),
                  ),
                if (checkQuery(Routes.n78_clip_oval.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n78_clip_oval.toLocation),
                        child: Text("N78 ClipOval")),
                  ),
                if (checkQuery(
                    Routes.n77_cupertino_activity_indicator.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n77_cupertino_activity_indicator.toLocation),
                        child: Text("N77 CupertinoActivityIndicator")),
                  ),
                if (checkQuery(Routes.n76_ignore_pointer.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n76_ignore_pointer.toLocation),
                        child: Text("N76 IgnorePointer")),
                  ),
                if (checkQuery(Routes.n75_divider.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n75_divider.toLocation),
                        child: Text("N75 Divider")),
                  ),
                if (checkQuery(Routes.n74_progress_indicator.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n74_progress_indicator.toLocation),
                        child: Text("N74 Progress Indicator")),
                  ),
                if (checkQuery(Routes.n73_clip_path.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n73_clip_path.toLocation),
                        child: Text("N73 ClipPath")),
                  ),
                if (checkQuery(Routes.n72_builder.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n72_builder.toLocation),
                        child: Text("N72 Builder")),
                  ),
                if (checkQuery(Routes.n71_notification_listener.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n71_notification_listener.toLocation),
                        child: Text("N71 NotificationListener")),
                  ),
                if (checkQuery(Routes.n70_shader_mask.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n70_shader_mask.toLocation),
                        child: Text("N70 ShaderMask")),
                  ),
                if (checkQuery(Routes.n69_list_wheel_scroll_view.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n69_list_wheel_scroll_view.toLocation),
                        child: Text("N69 ListWheelScrollView")),
                  ),
                if (checkQuery(
                    Routes.n68_snack_bar_with_scaffold_messenger.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes
                            .n68_snack_bar_with_scaffold_messenger.toLocation),
                        child: Text("N68 SnackBar")),
                  ),
                if (checkQuery(Routes.n67_drawer.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n67_drawer.toLocation),
                        child: Text("N67 Drawer")),
                  ),
                if (checkQuery(Routes.n66_default_tab_bar_view.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n66_default_tab_bar_view.toLocation),
                        child: Text(
                            "N66 DefaultTabController, TabBar and TabBarView")),
                  ),
                if (checkQuery(Routes.n65_image.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n65_image.toLocation),
                        child: Text("N65 Image")),
                  ),
                if (checkQuery(Routes.n64_tween_animation_builder.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n64_tween_animation_builder.toLocation),
                        child: Text("N64 TweenAnimationBuilder")),
                  ),
                if (checkQuery(Routes.n63_cupertino_action_sheet.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n63_cupertino_action_sheet.toLocation),
                        child: Text("N63 CupertinoActionSheet")),
                  ),
                if (checkQuery(Routes.n62_toggle_buttons.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n62_toggle_buttons.toLocation),
                        child: Text("N62 ToggleButtons")),
                  ),
                if (checkQuery(Routes.n61_color_filtered.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n61_color_filtered.toLocation),
                        child: Text("N61 ColorFiltered")),
                  ),
                if (checkQuery(
                    Routes.n60_draggable_scrollable_sheet.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n60_draggable_scrollable_sheet.toLocation),
                        child: Text("N60 DraggableScrollableSheet")),
                  ),
                if (checkQuery(Routes.n59_animated_cross_fade.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n59_animated_cross_fade.toLocation),
                        child: Text("N59 AnimatedCrossFade")),
                  ),
                if (checkQuery(Routes.n58_alert_dialog.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n58_alert_dialog.toLocation),
                        child: Text("N58 AlertDialog")),
                  ),
                if (checkQuery(Routes.n57_slider.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n57_slider.toLocation),
                        child: Text("N57 Slider")),
                  ),
                if (checkQuery(Routes.n56_data_table.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n56_data_table.toLocation),
                        child: Text("N56 DataTable")),
                  ),
                if (checkQuery(
                    Routes.n54_n55_container_n_selectable_text.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes
                            .n54_n55_container_n_selectable_text.toLocation),
                        child: Text("N54&N55 Container and SelectableText")),
                  ),
                if (checkQuery(Routes.n52_53_list_view_n_list_tile.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n52_53_list_view_n_list_tile.toLocation),
                        child: Text("N52&53 ListView & ListTile")),
                  ),
                if (checkQuery(Routes.n51_fractionally_sized_box.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n51_fractionally_sized_box.toLocation),
                        child: Text("N51 FractionallySizedBox")),
                  ),
                if (checkQuery(Routes.n50_animated_opacity.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n50_animated_opacity.toLocation),
                        child: Text("N50 AnimatedOpacity")),
                  ),
                if (checkQuery(Routes.n49_stack.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n49_stack.toLocation),
                        child: Text("N49 Stack")),
                  ),
                if (checkQuery(Routes.n48_constrained_box.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n48_constrained_box.toLocation),
                        child: Text("N48 ConstrainedBox")),
                  ),
                if (checkQuery(
                    Routes.n47_semantics_with_scaffold_messenger.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes
                            .n47_semantics_with_scaffold_messenger.toLocation),
                        child: Text("N47 Semantics")),
                  ),
                if (checkQuery(Routes.n45_n46_animated_padding_and_indexed_stack
                    .toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(Routes
                            .n45_n46_animated_padding_and_indexed_stack
                            .toLocation),
                        child: Text("N45 AnimatedPadding & N46 IndexedStack")),
                  ),
                if (checkQuery(Routes.n44_animated_positioned.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n44_animated_positioned.toLocation),
                        child: Text("N44 AnimatedPositioned")),
                  ),
                if (checkQuery(Routes.n43_animated_switcher.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n43_animated_switcher.toLocation),
                        child: Text("N43 AnimatedSwitcher")),
                  ),
                if (checkQuery(Routes.n42_reorderable_list_view.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n42_reorderable_list_view.toLocation),
                        child: Text("N42 ReorderableListView")),
                  ),
                if (checkQuery(Routes.n41_rich_text.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n41_rich_text.toLocation),
                        child: Text("N41 RichText")),
                  ),
                if (checkQuery(Routes.n40_placeholder.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n40_placeholder.toLocation),
                        child: Text("N40 Placeholder")),
                  ),
                if (checkQuery(Routes.n39_limited_box.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n39_limited_box.toLocation),
                        child: Text("N39 LimitedBox")),
                  ),
                if (checkQuery(Routes.n38_aspect_ratio.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n38_aspect_ratio.toLocation),
                        child: Text("N38 AspectRatio")),
                  ),
                if (checkQuery(Routes.n37_animated_icon.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n37_animated_icon.toLocation),
                        child: Text("N37 AnimatedIcon")),
                  ),
                if (checkQuery(Routes.n36_inherited_widget.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n36_inherited_widget.toLocation),
                        child: Text("N36 InheritedWidget")),
                  ),
                if (checkQuery(Routes.n35_spacer.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n35_spacer.toLocation),
                        child: Text("N35 Spacer")),
                  ),
                if (checkQuery(Routes.n34_media_query.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n34_media_query.toLocation),
                        child: Text("N34 MediaQuery")),
                  ),
                if (checkQuery(Routes.n33_flexible.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n33_flexible.toLocation),
                        child: Text("N33 Flexible")),
                  ),
                if (checkQuery(
                    Routes.n32_animated_list_with_fade_animation.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        //with FadeAnimation
                        onPressed: () =>
                            Get.toNamed(Routes
                            .n32_animated_list_with_fade_animation.toLocation),
                        child: Text("N32 AnimatedList")),
                  ),
                if (checkQuery(Routes.n31_draggable_with_opacity.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(
                            Routes.n31_draggable_with_opacity.toLocation),
                        child: Text("N31 Draggable with Opacity")),
                  ),
                if (checkQuery(Routes.n30_value_listenable_builder.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n30_value_listenable_builder.toLocation),
                        child: Text("N30 ValueListenableBuilder")),
                  ),
                if (checkQuery(Routes.n29_sized_box.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n29_sized_box.toLocation),
                        child: Text("N29 SizedBox")),
                  ),
                if (checkQuery(Routes.n28_dismissible.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n28_dismissible.toLocation),
                        child: Text("N28 Dismissible")),
                  ),
                if (checkQuery(Routes.n27_animated_builder.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n27_animated_builder.toLocation),
                        child: Text("N27 AnimatedController")),
                  ),
                if (checkQuery(Routes.n26_positioned.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n26_positioned.toLocation),
                        child: Text("N26 Positioned")),
                  ),
                if (checkQuery(Routes.n25_align.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n25_align.toLocation),
                        child: Text("N25 Align")),
                  ),
                if (checkQuery(Routes.n24_backdrop_filter.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n24_backdrop_filter.toLocation),
                        child: Text("N24 BackdropFilter")),
                  ),
                if (checkQuery(Routes.n23_transform.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n23_transform.toLocation),
                        child: Text("N23 Transform")),
                  ),
                if (checkQuery(Routes.n22_absorb_pointer.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n22_absorb_pointer.toLocation),
                        child: Text("N22 AbsorbPointer")),
                  ),
                if (checkQuery(Routes.n21_layout_builder.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n21_layout_builder.toLocation),
                        child: Text("N21 LayoutBuilder")),
                  ),
                if (checkQuery(Routes.n19_tooltip.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n19_tooltip.toLocation),
                        child: Text("N19 Tooltip")),
                  ),
                if (checkQuery(Routes.n18_custom_paint.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n18_custom_paint.toLocation),
                        child: Text("N18 CustomPaint")),
                  ),
                if (checkQuery(Routes.n17_first.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n17_hero_screen.toLocation),
                        child: Text("N17 Hero")),
                  ),
                if (checkQuery(Routes.n16_clip_r_rect.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n16_clip_r_rect.toLocation),
                        child: Text("N16 ClipRRect")),
                  ),
                if (checkQuery(Routes.n15_inherited_widget_screen.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () => Get.toNamed(
                            Routes.n15_inherited_widget_screen.toLocation),
                        child: Text("N15 InheritedWidget")),
                  ),
                if (checkQuery(Routes.n14_stream_builder_with_animated_container
                    .toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes
                            .n14_stream_builder_with_animated_container
                            .toLocation),
                        child:
                            Text("N14 StreamBuilder with AnimatedContainer")),
                  ),
                if (checkQuery(Routes.n13_fadein_image.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.n13_fadein_image.toLocation),
                        child: Text("N13 FadeInImage")),
                  ),
                if (checkQuery(Routes.sliver_screen.toString()))
                  Container(
                    margin: EdgeInsets.all(8.0),
                    child: TextButton(
                        onPressed: () =>
                            Get.toNamed(Routes.sliver_screen.toLocation),
                        child: Text("Sliver")),
                  ),
                if (checkQuery(Routes.welcome.toString()))
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
        ));
  }
}
