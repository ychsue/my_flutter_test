import 'dart:math';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class N49StackScreen extends StatelessWidget {
  const N49StackScreen({Key? key}) : super(key: key);

  int randRGB() {
    return Random().nextInt(255);
  }

  @override
  Widget build(BuildContext context) {
    final cA = AlignmentDirectional.topStart.obs;
    final td = TextDirection.ltr.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Obx(
            () => Stack(
              alignment: cA.value,
              textDirection: td.value,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
                Container(
                  width: 250,
                  height: 250,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
                Container(
                  width: 240,
                  height: 240,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
                Container(
                  width: 230,
                  height: 230,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
                Container(
                  width: 220,
                  height: 220,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
                Container(
                  width: 210,
                  height: 210,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, randRGB(), randRGB(), randRGB()),
                ),
              ],
            ),
          )),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Text("對齊"),
                Flexible(
                  child: Obx(() => GridView.count(
                        crossAxisCount: 5,
                        // maxCrossAxisExtent: 100,
                        children: [
                          RadioListTile<AlignmentDirectional>(
                              title: Text("bc"),
                              value: AlignmentDirectional.bottomCenter,
                              selected:
                                  cA.value == AlignmentDirectional.bottomCenter,
                              groupValue: cA.value,
                              onChanged: (v) {
                                cA.value =
                                    v ?? AlignmentDirectional.centerStart;
                              }),
                          RadioListTile<AlignmentDirectional>(
                              title: Text("be"),
                              value: AlignmentDirectional.bottomEnd,
                              selected:
                                  cA.value == AlignmentDirectional.bottomEnd,
                              groupValue: cA.value,
                              onChanged: (v) {
                                cA.value =
                                    v ?? AlignmentDirectional.centerStart;
                              }),
                          RadioListTile<AlignmentDirectional>(
                              title: Text("cc"),
                              value: AlignmentDirectional.center,
                              selected: cA.value == AlignmentDirectional.center,
                              groupValue: cA.value,
                              onChanged: (v) {
                                cA.value =
                                    v ?? AlignmentDirectional.centerStart;
                              }),
                          RadioListTile<AlignmentDirectional>(
                              title: Text("cs"),
                              value: AlignmentDirectional.centerStart,
                              selected:
                                  cA.value == AlignmentDirectional.centerStart,
                              groupValue: cA.value,
                              onChanged: (v) {
                                cA.value =
                                    v ?? AlignmentDirectional.centerStart;
                              }),
                          RadioListTile<AlignmentDirectional>(
                              title: Text("ce"),
                              value: AlignmentDirectional.centerEnd,
                              selected:
                                  cA.value == AlignmentDirectional.centerEnd,
                              groupValue: cA.value,
                              onChanged: (v) {
                                cA.value =
                                    v ?? AlignmentDirectional.centerStart;
                              }),
                        ],
                      )),
                ),
              ],
            ),
          ),
          Obx(() => Row(
                children: [
                  Text('文字方向'),
                  Flexible(
                    child: RadioListTile<TextDirection>(
                        title: Text("LtoR"),
                        value: TextDirection.ltr,
                        groupValue: td.value,
                        onChanged: (v) {
                          td.value = v ?? TextDirection.ltr;
                        }),
                  ),
                  Flexible(
                    child: RadioListTile<TextDirection>(
                        title: Text("RtoL"),
                        value: TextDirection.rtl,
                        groupValue: td.value,
                        onChanged: (v) {
                          td.value = v ?? TextDirection.ltr;
                        }),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
