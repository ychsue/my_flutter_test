import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N97MouseRegionScreen extends StatelessWidget {
  const N97MouseRegionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cIType = 0.obs;
    final cEnter = Rxn<PointerEnterEvent>();
    final cExit = Rxn<PointerExitEvent>();
    final cHover = Rxn<PointerHoverEvent>();

    final types = [
      SystemMouseCursors.basic,
      // SystemMouseCursors.alias,
      // SystemMouseCursors.allScroll,
      // SystemMouseCursors.resizeUp,
      SystemMouseCursors.text,
      SystemMouseCursors.click,
      SystemMouseCursors.forbidden,
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("MouseRegion"),
      ),
      body: Column(
        children: [
          Center(
            child: Obx(
              () => MouseRegion(
                cursor: types[cIType.value],
                onEnter: (event) => cEnter.value = event,
                onExit: (event) => cExit.value = event,
                onHover: (event) => cHover.value = event,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                  child: Align(
                    child: Text("Area for Clicking"),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Obx(
              () => ListView(
                children: [
                  ToggleButtons(
                    children: ["Basic", "Text", "Click", "Forbidden"]
                        .map((e) => Text(e))
                        .toList(),
                    onPressed: (index) => cIType.value = index,
                    isSelected: List<bool>.generate(
                        types.length, (index) => cIType.value == index),
                  ),
                  ListTile(
                    leading: Text("Enter"),
                    title: Text(
                      "buttons: ${cEnter.value?.buttons.toString()}, position: ${cEnter.value?.position.dx},${cEnter.value?.position.dy}",
                    ),
                  ),
                  ListTile(
                    leading: Text("Exit"),
                    title: Text(
                      "buttons: ${cExit.value?.buttons.toString()}, position: ${cExit.value?.position.dx},${cExit.value?.position.dy}",
                    ),
                  ),
                  ListTile(
                    leading: Text("Hover"),
                    title: Text(
                      "buttons: ${cHover.value?.buttons.toString()}, position: ${cHover.value?.position.dx},${cHover.value?.position.dy}",
                    ),
                  ),
                  Text(
                      "NOTE: This ambel area just responses to mouse event. It doesn't care the finger's events"),
                  Text(
                      "Besides, it still has a lot of cursors which I did not list"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
