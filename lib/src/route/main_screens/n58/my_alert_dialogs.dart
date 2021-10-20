import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Material AlertDialog"),
      content: Text("測試看看"),
      actions: [
        TextButton(
            onPressed: () => Get.snackbar("title", "Yes"), child: Text("Yes")),
        TextButton(
            onPressed: () => Get.snackbar("title", "No"), child: Text("No")),
      ],
    );
  }
}

class MyCupertinoAlertDialog extends StatelessWidget {
  const MyCupertinoAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text("Cupertino AlertDialog"),
      content: Text("測試看看for iOS"),
      actions: [
        CupertinoDialogAction(
            onPressed: () => Get.snackbar("title", "Yes"), child: Text("Yes")),
        CupertinoDialogAction(
          child: Text("No"),
          onPressed: () => Get.snackbar("title", "No"),
        ),
      ],
    );
  }
}
