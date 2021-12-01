import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N76IgnorePointerScreen extends StatelessWidget {
  const N76IgnorePointerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cDisable = false.obs;

    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: IgnorePointer(
                ignoring: cDisable.value,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ElevatedButton(
                        onPressed: () =>
                            Get.snackbar("No. $index", "我按了 $index 鈕"),
                        child: Text("$index"));
                  },
                ),
              ),
            ),
            SwitchListTile(
              dense: true,
              title: Text("Disable the ListView:"),
              contentPadding: EdgeInsets.only(right: 100),
              value: cDisable.value,
              onChanged: cDisable,
            ),
          ],
        ),
      ),
    );
  }
}
