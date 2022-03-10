import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N104OpenContainerScreen extends StatelessWidget {
  const N104OpenContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final datas = [
      ViewData(closeData: "1st One", openData: "This is the first one's data"),
      ViewData(closeData: "2nd One", openData: "第2筆資料"),
      ViewData(closeData: "3rd One", openData: "第3筆資料"),
      ViewData(closeData: "4th One", openData: "第4筆資料"),
      ViewData(closeData: "5th One", openData: "第5筆資料"),
      ViewData(closeData: "6th One", openData: "第6筆資料"),
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Package: Animations:: OpenContainer")),
      body: ListView(
        children: datas
            .map(
              (e) => OpenContainer(
                closedBuilder: (ctx, fun) {
                  return ListTile(
                    title: Text(e.closeData),
                    leading: Icon(Icons.ac_unit),
                  );
                },
                openBuilder: (ctx, fun) => Column(
                  children: [
                    Expanded(child: Text(e.openData)),
                    Expanded(
                      child: IconButton(
                        onPressed: () => Get.back(),
                        icon: Icon(Icons.keyboard_return),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class ViewData {
  final String closeData;
  final String openData;
  ViewData({
    required this.closeData,
    required this.openData,
  });
}
