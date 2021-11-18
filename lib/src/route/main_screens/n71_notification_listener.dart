import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N71NotificationListenerScreen extends StatelessWidget {
  const N71NotificationListenerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cScroll = "start".obs;
    final cClick = Rxn<int>();
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => NotificationListener<MyNotification>(
          onNotification: (notiClick) {
            cClick.value = notiClick.data;
            return true;
          },
          child: NotificationListener<ScrollNotification>(
            onNotification: (noti) {
              if (noti is ScrollStartNotification) {
                cScroll.value = "start";
              } else if (noti is ScrollEndNotification) {
                cScroll.value = "end";
              } else if (noti is ScrollUpdateNotification) {
                cScroll.value = "${noti.dragDetails?.localPosition.dy}";
              } else if (noti is ScrollMetricsNotification) {
                cScroll.value = "metric changes";
              }
              return true;
            },
            child: Column(
              children: [
                Expanded(
                    child: ListView(
                  children: [
                    for (var i = 0; i < 30; i++)
                      Builder(builder: (ctx) {
                        return ElevatedButton(
                            onPressed: () {
                              MyNotification(data: i).dispatch(ctx);
                            },
                            child: Text("{$i}th button"));
                      })
                  ],
                )),
                ListTile(
                  title: Text("Scrolling: ${cScroll.value}"),
                ),
                ListTile(
                  title: Text("Clicked: ${cClick.value}"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyNotification extends Notification {
  final int data;
  MyNotification({required this.data});
}
