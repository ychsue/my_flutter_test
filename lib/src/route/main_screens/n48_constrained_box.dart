import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N48ConstrainedBoxScreen extends StatelessWidget {
  const N48ConstrainedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = 0.0
        .obs; //Originally I want to try to bind the width with a Container. But, it does not work.
    final gKey = GlobalKey();
    // WidgetsBinding.instance?.addPostFrameCallback((duration) {
    //   c.value = gKey.currentContext?.size?.width ?? 100.0;
    // });

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(() => ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: (MediaQuery.of(context).size.width / 2) + c.value
                    // maxWidth: c.value / 2,
                    ),
                child: Container(
                  child: Text(
                      "試著調整螢幕大小，看看它會怎麼變。 Try to resize your browser to see what will happen."),
                  color: Colors.yellow,
                ),
              )),
          Expanded(
              child: Container(
            key: gKey,
            color: Colors.blue,
          )),
        ],
      ),
    );
  }
}
