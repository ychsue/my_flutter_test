import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n58/my_alert_dialogs.dart';

class N58AlertDialogScreen extends StatelessWidget {
  const N58AlertDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Center(
            child: ElevatedButton(
              child: Text("AlertDialog"),
              onPressed: () {
                showDialog(context: context, builder: (ctx) => MyAlertDialog());
              },
            ),
          )),
          Expanded(
              child: Center(
            child: ElevatedButton(
              child: Text("CupertinoAlertDialog"),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => MyCupertinoAlertDialog());
              },
            ),
          )),
        ],
      ),
    );
  }
}
