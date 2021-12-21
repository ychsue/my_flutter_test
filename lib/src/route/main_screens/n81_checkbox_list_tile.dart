import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N81CheckboxListTileScreen extends StatelessWidget {
  const N81CheckboxListTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = false.obs;
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => ListView(
          children: [
            CheckboxListTile(
              title: Text("Default"),
              value: c.value,
              onChanged: (v) => c.value = v ?? false,
            ),
            CheckboxListTile(
              title: Text("With 2nd"),
              secondary: Icon(Icons.ac_unit),
              value: c.value,
              onChanged: (v) => c.value = v ?? false,
            ),
            CheckboxListTile(
              title: Text("Affinity.leading"),
              controlAffinity: ListTileControlAffinity.leading,
              value: c.value,
              onChanged: (v) => c.value = v ?? false,
            ),
            CheckboxListTile(
              title: Text("Affinity.trailing"),
              controlAffinity: ListTileControlAffinity.trailing,
              value: c.value,
              onChanged: (v) => c.value = v ?? false,
            ),
            CheckboxListTile(
              title: Text("Customize"),
              controlAffinity: ListTileControlAffinity.platform,
              checkColor: Colors.green,
              activeColor: Colors.yellow,
              value: c.value,
              onChanged: (v) => c.value = v ?? false,
            ),
          ],
        ),
      ),
    );
  }
}
