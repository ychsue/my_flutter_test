import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n15/n15Controller.dart';
import 'package:test2/src/route/main_screens/n15/n15_inherited_model.dart';

import 'n15/n15_child.dart';

class N15InheritedWidgetScreen extends StatelessWidget {
  N15InheritedWidgetScreen({Key? key}) : super(key: key);

  final ctr = Get.put(N15Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(() => N15InheritedModel(
          num: ctr.num,
          child: Scaffold(
            appBar: AppBar(),
            body: N15Child(),
            floatingActionButton: IconButton(
                onPressed: () {
                  ctr.num++;
                },
                icon: Icon(Icons.access_alarms)),
          ),
        ));
  }
}
