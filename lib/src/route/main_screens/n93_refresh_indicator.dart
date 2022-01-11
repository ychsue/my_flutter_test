import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';

/// According to [this code](https://docs.flutter.dev/release/breaking-changes/default-scroll-behavior-drag#migration-guide)
/// from [people's Q&A](https://github.com/flutter/flutter/issues/94677)
/// You need to define a controller for your scroller for your web version.
///
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        // etc.
      };
}

class N93RefreshIndicatorScreen extends StatefulWidget {
  const N93RefreshIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<N93RefreshIndicatorScreen> createState() =>
      _N93RefreshIndicatorScreenState();
}

class _N93RefreshIndicatorScreenState extends State<N93RefreshIndicatorScreen> {
  final ScrollController controller = ScrollController();

  List<int> cList = List.generate(20, (i) => i).obs;
  final cWidth = 1.0.obs;
  final cColor = Rx<Color>(Colors.blue);
  final cForBackground = false.obs;
  final cBKColor = Rx<Color>(Theme.of(Get.context!).canvasColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RefreshIndicator"),
      ),
      body: Obx(() => Column(children: [
            ListTile(
              leading: Text("Width"),
              title: Slider(
                value: cWidth.value,
                onChanged: (v) => cWidth.value = v,
                min: 1,
                max: 10,
                divisions: 10,
                label: "${cWidth.value}",
              ),
            ),
            SwitchListTile(
              value: cForBackground.value,
              onChanged: (v) => cForBackground.value = v,
              title: Text("For Background Color?"),
            ),
            ColorPicker(
                pickerColor:
                    (cForBackground.value) ? cBKColor.value : cColor.value,
                onColorChanged: (clr) {
                  if (cForBackground.value == true)
                    cBKColor.value = clr;
                  else
                    cColor.value = clr;
                }),
            Expanded(
              child: RefreshIndicator(
                strokeWidth: cWidth.value,
                backgroundColor: cBKColor.value,
                color: cColor.value,
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 10));
                  final start = cList.length;
                  final newList = List.generate(20, (index) => start + index);
                  cList.addAll(newList);

                  return;
                },
                child: ScrollConfiguration(
                  behavior: MyCustomScrollBehavior(),
                  child: ListView(
                    controller: controller,
                    reverse: true,
                    children:
                        cList.map((e) => Card(child: Text("$e"))).toList(),
                  ),
                ),
              ),
            )
          ])),
    );
  }
}
