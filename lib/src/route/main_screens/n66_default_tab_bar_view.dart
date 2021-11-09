import 'package:flutter/material.dart';

class N66DefaultTabBarViewScreen extends StatelessWidget {
  const N66DefaultTabBarViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, // length of [tabs]
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: "動畫",
                ),
                Tab(
                  icon: Icon(Icons.backpack),
                ),
                Tab(
                  child: Icon(Icons.padding),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                color: Colors.yellow,
                child: Center(
                  child: Text("Animation"),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text("backpack"),
                ),
              ),
              Container(
                color: Colors.red,
                child: Center(
                  child: Text("邊框"),
                ),
              ),
            ],
          ),
        ));
  }
}
