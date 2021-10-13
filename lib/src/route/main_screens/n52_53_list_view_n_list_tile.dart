import 'package:flutter/material.dart';

class N52N53ListViewNListTileScreen extends StatelessWidget {
  const N52N53ListViewNListTileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Text("這怎麼了？"),
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.menu),
                  title: Text("正常"),
                  tileColor: Colors.yellow,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.menu),
                  title: Text("三行加dense"),
                  subtitle: Text("subtitle\n 透過\\n下一行"),
                  isThreeLine: true,
                  dense: true,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.menu),
                  title: Text("enable=false"),
                  enabled: false,
                ),
                ListTile(
                  leading: Icon(Icons.access_alarm),
                  trailing: Icon(Icons.menu),
                  title: Text("selected=true"),
                  enabled: true,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (ctx, ind) => ListTile(
                      title: Text("第$ind個"),
                    ),
                separatorBuilder: (ctx, ind) => Divider(),
                itemCount: 5),
          ),
        ],
      ),
    );
  }
}
