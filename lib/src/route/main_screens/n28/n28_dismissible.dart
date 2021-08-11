import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n28/n28_test_list.dart';

class N28DismissibleScreen extends StatelessWidget {
  const N28DismissibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c =
        N28TestListController(); //因為立即使用，所以，無須再透過 `Get.put` 與 `Get.find` 了
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Obx(
            () => ListView.builder(
              itemBuilder: (ctx, index) {
                final item = c.data[index];
                return Dismissible(
                  child: ListTile(
                    // 直接接 Text ，當有背景時，會脫動很慢
                    title: Text(
                      item,
                      key: ValueKey(item + index.toString()),
                    ),
                  ),
                  secondaryBackground: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.delete),
                  ),
                  background: Container(
                    color: Colors.green,
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.check),
                  ),
                  onDismissed: (dir) {
                    c.data.removeAt(index);
                    (dir == DismissDirection.startToEnd)
                        ? c.data.insert(0, item)
                        : null;
                  },
                  key: ValueKey(item + index.toString()),
                );
              },
              itemCount: c.data.length,
            ),
          ),
        ),
      ),
    );
  }
}
