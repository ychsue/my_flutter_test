import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N68SnackBarScreen extends StatelessWidget {
  const N68SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> _key =
        GlobalKey<ScaffoldMessengerState>();
    return ScaffoldMessenger(
      key: _key,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Test of SnackBars"),
        ),
        body: Builder(
            builder: (ctx) => Column(
                  children: [
                    Expanded(
                        child: Center(
                      child: ElevatedButton(
                        child: Text("Pure Text"),
                        onPressed: () =>
                            ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
                          content: Text(
                            "Just Text~~~",
                          ),
                        )),
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: ElevatedButton(
                        child: Text("A Row by GlobalKey<Sca..Mess..State>"),
                        onPressed: () =>
                            _key.currentState?.showSnackBar(SnackBar(
                          content: Row(
                            children: [
                              Icon(Icons.text_fields),
                              Text(
                                "Text with Icon",
                              ),
                            ],
                          ),
                        )),
                      ),
                    )),
                    Expanded(
                        child: Center(
                      child: ElevatedButton(
                        child: Text("By GetX"),
                        onPressed: () => Get.snackbar(
                          "GetX Title",
                          "Message",
                          titleText: Text(
                              "來自 titleText. It will replace the 'title' part"),
                          icon: Row(
                            children: [
                              Icon(Icons.ice_skating_outlined),
                              // Text("來自 icon"),
                            ],
                          ),
                        ),
                      ),
                    )),
                  ],
                )),
      ),
    );
  }
}
