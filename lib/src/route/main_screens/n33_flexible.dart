import 'package:flutter/material.dart';
import 'package:resizable_widget/resizable_widget.dart';
import 'package:get/get.dart';

class N33FlexibleScreen extends StatelessWidget {
  const N33FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var c = false.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        child: ResizableWidget(
          children: [
            ResizableWidget(
              children: [
                Row(
                  children: [
                    Obx(() => Flexible(
                          fit: (c.value) ? FlexFit.tight : FlexFit.loose,
                          child: Container(
                            color: Colors.yellow,
                            width: 20,
                          ),
                          flex: 2,
                        )),
                    Flexible(
                      child: Container(
                        color: Colors.green,
                      ),
                      flex: 3,
                    ),
                    Flexible(
                      child: Container(
                        color: Colors.yellowAccent,
                      ),
                      flex: 1,
                    ),
                  ],
                ),
                Container(
                  color: Colors.red,
                  child: Obx(
                    () => SwitchListTile(
                      value: c.value,
                      onChanged: (v) {
                        c.value = !c.value;
                      },
                      title: Text('Tight(true), Loose(false)'),
                    ),
                  ),
                )
              ],
            ),
            Container(color: Colors.blue),
          ],
          isHorizontalSeparator: true,
        ),
      ),
    );
  }
}
