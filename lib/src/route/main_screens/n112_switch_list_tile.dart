import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N112SwitchListTileScreen extends StatelessWidget {
  const N112SwitchListTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cSwitch = false.obs;
    final caf = ListTileControlAffinity.platform.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text("SwitchListTile"),
      ),
      body: Obx(
        () => ListView(children: [
          ListTile(
            leading: Text("controlAffinity:"),
            title: Row(
              children: [
                ElevatedButton(
                    onPressed: () =>
                        caf.value = ListTileControlAffinity.leading,
                    child: Text("Leading")),
                ElevatedButton(
                    onPressed: () =>
                        caf.value = ListTileControlAffinity.platform,
                    child: Text("Platform")),
                ElevatedButton(
                    onPressed: () =>
                        caf.value = ListTileControlAffinity.trailing,
                    child: Text("Trailing")),
                Text("${caf.value}"),
              ],
            ),
          ),
          SwitchListTile(
            value: cSwitch.value,
            onChanged: (v) => cSwitch.value = v,
            title: Text("SwitchListTile:"),
            secondary: Text("2nd"),
            controlAffinity: caf.value,
            activeThumbImage: NetworkImage("https://picsum.photos/250?image=9"),
          ),
          CheckboxListTile(
            value: cSwitch.value,
            onChanged: (v) => cSwitch.value = v ?? false,
            title: Text("CheckboxListTile"),
            secondary: Text("2nd"),
            controlAffinity: caf.value,
          ),
          RadioListTile(
            value: true,
            groupValue: cSwitch.value,
            onChanged: (v) => cSwitch.value = (v == null) ? false : (v as bool),
            title: Text("RadioListTile: true"),
            secondary: Text("2nd"),
            controlAffinity: caf.value,
          ),
          RadioListTile(
            value: false,
            groupValue: cSwitch.value,
            onChanged: (v) => cSwitch.value = (v == null) ? false : (v as bool),
            title: Text("RadioListTile: false"),
            secondary: Text("2nd"),
            controlAffinity: caf.value,
          )
        ]),
      ),
    );
  }
}
