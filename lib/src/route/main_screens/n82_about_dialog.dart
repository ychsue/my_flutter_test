import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class N82AboutDialogScreen extends StatelessWidget {
  const N82AboutDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LicenseRegistry.addLicense(() async* {
      yield LicenseEntryWithLineBreaks(['我的 packages'], "這是什麼");
    });
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Click The button to show an AboutDialog"),
      ),
      floatingActionButton: IconButton(
        onPressed: () => showAboutDialog(
          context: context,
          applicationVersion: "2.0.1",
          applicationIcon: Icon(Icons.video_call),
          applicationLegalese: "這是法律條文喔。",
          applicationName: "My name~~~",
          children: [
            Text("List 1"),
            Text("List 2"),
          ],
        ),
        icon: Icon(Icons.accessibility_new),
      ),
    );
  }
}
