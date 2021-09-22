import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N45N46AnimatedPaddingAndIndexedStackScreen extends StatelessWidget {
  const N45N46AnimatedPaddingAndIndexedStackScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cStack = 0.obs;
    final cPadding = 10.0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => Column(
            children: [
              // #region IndexedStack Part
              Expanded(
                child: IndexedStack(
                  index: cStack.value,
                  children: [
                    Container(
                      child: Center(
                        child: Text("First"),
                      ),
                      color: Colors.red,
                    ),
                    Container(
                      child: Center(
                        child: Text("Second"),
                      ),
                      color: Colors.yellow,
                    ),
                    Container(
                      child: Center(
                        child: Text("Third"),
                      ),
                      color: Colors.green,
                    ),
                    Container(
                      child: Center(
                        child: Text("Fourth"),
                      ),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<int>(
                        title: Text("1st"),
                        value: 0,
                        groupValue: cStack.value,
                        onChanged: (v) {
                          cStack.value = v ?? 0;
                        }),
                  ),
                  Expanded(
                    child: RadioListTile<int>(
                        title: Text("2nd"),
                        value: 1,
                        groupValue: cStack.value,
                        onChanged: (v) {
                          cStack.value = v ?? 1;
                        }),
                  ),
                  Expanded(
                    child: RadioListTile<int>(
                        title: Text("3rd"),
                        value: 2,
                        groupValue: cStack.value,
                        onChanged: (v) {
                          cStack.value = v ?? 2;
                        }),
                  ),
                  Expanded(
                    child: RadioListTile<int>(
                        title: Text("4th"),
                        value: 3,
                        groupValue: cStack.value,
                        onChanged: (v) {
                          cStack.value = v ?? 3;
                        }),
                  ),
                ],
              ),
              // #endregion IndexedStack Part

              // #region AnimatedPadding Part
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: AnimatedPadding(
                      padding: EdgeInsets.all(cPadding.value),
                      duration: const Duration(seconds: 1),
                      child: Container(
                        child: Align(child: Text('Animated padding one')),
                        color: Colors.amber,
                      ),
                    )),
                    Expanded(
                        child: Container(
                      child: Text('none'),
                      color: Colors.red,
                    ))
                  ],
                ),
              ),
              Slider(
                value: cPadding.value,
                onChanged: (v) {
                  cPadding.value = v;
                },
                min: 0,
                max: 100,
              ),
              // #endregion AnimatedPadding Part
            ],
          )),
    );
  }
}
