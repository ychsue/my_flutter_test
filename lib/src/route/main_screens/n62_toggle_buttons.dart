import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N62ToggleButtonsScreen extends StatelessWidget {
  const N62ToggleButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cSel = List.generate(3, (_) => false).obs;
    final cOnpressed = true.obs;
    final cdisabledColor = false.obs;
    final cColor = false.obs;
    final cSelColor = false.obs;
    final cBkSelColor = false.obs;
    final cRenderBorder = false.obs;
    final cInkColor = false.obs;
    final cHighColor = false.obs;
    final fNCtrler = Get.put<FNCtrler>(FNCtrler());
    final cHover = false.obs;

    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          children: [
            ToggleButtons(
              children: [
                Tooltip(message: "測試", child: Icon(Icons.local_cafe)),
                Icon(Icons.fastfood),
                Icon(Icons.cake),
              ],
              focusNodes: fNCtrler.focusNodes,
              focusColor: Colors.cyan,
              hoverColor: (cHover.value) ? Colors.yellow : null,

              isSelected: cSel,
              onPressed: (cOnpressed.value)
                  ? (i) {
                      cSel[i] = !cSel[i];
                    }
                  : null,
              disabledColor: (cdisabledColor.value) ? Colors.grey[300] : null,
              color: (cColor.value) ? Colors.green : null,
              selectedColor: (cSelColor.value) ? Colors.orange : null,
              fillColor: (cBkSelColor.value) ? Colors.red : null,
              // #region Border
              renderBorder: cRenderBorder.value,
              borderColor: Colors.orange,
              borderRadius: BorderRadius.circular(30),
              borderWidth: 5,
              disabledBorderColor: (cRenderBorder.value) ? Colors.black : null,
              selectedBorderColor: Colors.deepOrange,
              // #endregion Border
              splashColor: (cInkColor.value) ? Colors.purple : null,
              highlightColor: (cHighColor.value) ? Colors.yellow : null,
            ),
            SwitchListTile(
                value: cOnpressed.value,
                title: Text("onPressed:: "),
                onChanged: (v) {
                  cOnpressed.value = v;
                  debugPrint("$v");
                }),
            SwitchListTile(
              value: cdisabledColor.value,
              title: Text("disabledColor:: disabled color: grey[300]"),
              onChanged: (v) {
                cdisabledColor.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cColor.value,
              title: Text("color:: unselected Color(Green)"),
              onChanged: (v) {
                cColor.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cSelColor.value,
              title: Text("selectedColor:: selected Color(Orange)"),
              onChanged: (v) {
                cSelColor.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cBkSelColor.value,
              title: Text("fillColor:: selected Background Color(Red)"),
              onChanged: (v) {
                cBkSelColor.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cRenderBorder.value,
              title: Text("renderBorder:: render border"),
              onChanged: (v) {
                cRenderBorder.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cInkColor.value,
              title: Text("splashColor:: long press InkWell color(purple):"),
              onChanged: (v) {
                cInkColor.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cHighColor.value,
              title: Text("highlightColor:: highlight color(yellow)"),
              onChanged: (v) {
                cHighColor.value = v;
                debugPrint("$v");
              },
            ),
            SwitchListTile(
              value: cHover.value,
              title: Text("hoverColor:: Mouse hover: yellow"),
              onChanged: (v) {
                cHover.value = v;
                debugPrint("$v");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FNCtrler extends GetxController {
  final focusNodes = List.generate(3, (index) => FocusNode());

  @override
  void onClose() {
    focusNodes.forEach((element) {
      element.dispose();
    });
    super.onClose();
  }
}
