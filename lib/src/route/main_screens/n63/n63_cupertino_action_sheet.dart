import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'show_popup.dart';

class N63CupertinoActionSheetScreen extends StatelessWidget {
  const N63CupertinoActionSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = "測試".obs;
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: ElevatedButton.icon(
          onPressed: () => showPopup(context, c),
          icon: Icon(Icons.ad_units),
          label: Text("Popup")),
      body: Column(
        children: [
          Align(
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Text("Test"),
            ),
          ),
          Align(
            child: Obx(
              () => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${c.value}",
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
