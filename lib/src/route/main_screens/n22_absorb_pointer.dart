import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N22AbsorbPointer extends StatelessWidget {
  const N22AbsorbPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () => Get.snackbar('unblocked', 'message'),
            child: Text('test1'),
          ),
          Expanded(
            child: AbsorbPointer(
              // absorbing:
              //     true, // false to let its children can get the pointer's events
              ignoringSemantics:
                  true, // Set this one true will block the event, too.
              child: Center(
                child: ElevatedButton(
                  onPressed: () => Get.snackbar('blocked', 'message2'),
                  child: Text('test2'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
