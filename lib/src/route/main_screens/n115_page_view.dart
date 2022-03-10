import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N115PageViewScreen extends StatelessWidget {
  const N115PageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cDir = Axis.horizontal.obs;
    final pvCtrler = PageController(initialPage: 2);
    return Scaffold(
      appBar: AppBar(title: Text("PageView")),
      body: Obx(
        () => Column(
          children: [
            ListTile(
              leading: Text("Scroll direction"),
              title: Wrap(
                children: [
                  ElevatedButton(
                    onPressed: () => cDir.value = Axis.horizontal,
                    child: Text("Horizontal"),
                  ),
                  ElevatedButton(
                    onPressed: () => cDir.value = Axis.vertical,
                    child: Text("Vertical"),
                  ),
                  Text("${cDir.value}"),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: pvCtrler,
                scrollDirection: cDir.value,
                children: [
                  Container(
                    child: Text("Page 1"),
                    color: Colors.yellow,
                  ),
                  Container(
                    child: Text("Page 2"),
                    color: Colors.red,
                  ),
                  Container(
                    child: Text("Page 3"),
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
