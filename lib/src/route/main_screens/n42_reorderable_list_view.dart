import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N42ReorderableListViewScreen extends StatelessWidget {
  const N42ReorderableListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = [
      "週日",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ].obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(() => ReorderableListView(
          header: Text("長按並不能移動它們啊？(Oh, Web版才如此)"),
          children: [
            for (var date in c)
              ListTile(
                title: Text(date),
                key: ValueKey(date),
              )
          ],
          onReorder: (o, n) {
            if (o == n) return;
            final buf = List.of(c);
            final item = buf.removeAt(o);
            buf.insert((o > n) ? n : (n - 1), item);
            c.value = buf;
          })),
    );
  }
}
