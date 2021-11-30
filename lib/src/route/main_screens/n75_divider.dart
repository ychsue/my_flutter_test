import 'package:flutter/material.dart';

class N75DividerScreen extends StatelessWidget {
  const N75DividerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text("Default Divider ⬇️"),
          Divider(),
          Text("Divider with indent & endIndent⬇️"),
          Divider(
            indent: 18,
            endIndent: 40,
          ),
          Text("Divider with color, space(height): 10 and thickness: 5 ⬇️"),
          Divider(
            color: Colors.blue,
            height: 10,
            thickness: 8,
          ),
          Text("Divider by ListView.separated"),
          Expanded(
            child: ListView.separated(
                itemBuilder: (ctx, i) => Container(
                      color: Colors.amber,
                      child: Text("$i"),
                    ),
                separatorBuilder: (ctx, i) => Divider(),
                itemCount: 5),
          ),
          Text("By ListTile"),
          Expanded(
              child: ListView(
            children: [
              ...ListTile.divideTiles(context: context, tiles: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text("hello $i"),
                  )
              ]),
            ],
          )),
        ],
      ),
    );
  }
}
