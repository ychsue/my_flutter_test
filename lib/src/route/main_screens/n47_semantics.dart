import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N47SemanticsScreen extends StatelessWidget {
  const N47SemanticsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cc = 0.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Semantics(
              label: "能幹麻？",
              value: "甚麼value?",
              hint: "有提示?",
              enabled: false, //沒有感覺有意義
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("按得到我耶"),
                    ));
                  },
                  child: Text("用Semantic 包裝的 button，但都沒作用"),
                ),
              )),
          Obx(() => Semantics(
                label: 'Counter button',
                hint:
                    'Press to increase, gotten from https://kpsroka.dev/technical/guide-to-flutter-semantics.html',
                value: '${cc.value}',
                onTap: () {
                  cc.value++;
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("${cc.value}: 按得到我耶"),
                  ));
                },
                child: Text("${cc.value}: 我是用Semantics 模擬的按鈕，Web下按不到。"),
              )),
        ],
      ),
    );
  }
}
