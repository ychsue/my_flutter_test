import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class N84UrlLauncherPackage extends StatelessWidget {
  const N84UrlLauncherPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              final google = "https://www.google.com";
              await link2SthAsync(google);
            },
            child: Text("Link to google"),
          ),
          ElevatedButton(
            onPressed: () async {
              await link2SthAsync("mailto:ychsue1234@gmail.com");
            },
            child: Text("email to me"),
          ),
          ElevatedButton(
            onPressed: () async {
              await link2SthAsync("tel:123");
            },
            child: Text("telephone HTC"),
          ),
          ElevatedButton(
            onPressed: () async {
              await link2SthAsync("sms:123");
            },
            child: Text("text HTC?"),
          ),
        ],
      ),
    );
  }

  link2SthAsync(String stUrl) async {
    if (await canLaunch(stUrl)) {
      await launch(stUrl);
    } else {
      Get.dialog(Text("I cannot link to $stUrl"));
    }
  }
}
