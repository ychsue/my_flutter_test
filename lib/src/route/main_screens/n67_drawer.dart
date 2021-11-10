import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N67DrawerScreen extends StatelessWidget {
  const N67DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = "initialize".obs;
    final GlobalKey<ScaffoldState> _sKey = GlobalKey();
    return Scaffold(
      key: _sKey,
      appBar: AppBar(),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("My Drawer")),
            ListTile(
              title: Text("Apple"),
              onTap: () => c.value = "蘋果",
            ),
            ListTile(
              title: Text("Bananna"),
              onTap: () => c.value = "香蕉",
            ),
            ListTile(
              title: Text("carrot"),
              onTap: () => c.value = "紅蘿蔔",
            ),
            ListTile(
              title: Text("close it"),
              onTap: () => Navigator.of(context).pop(),
            ),
          ],
        ),
      ),
      body: Obx(
        () => Container(
          child: (c.value == "initialize")
              ? ElevatedButton(
                  onPressed: () => _sKey.currentState?.openEndDrawer(),
                  child: Text("Open An EndDrawer"))
              : Text(c.value),
        ),
      ),
    );
  }
}
