import 'package:flutter/material.dart';

class N117SafeareaScreen extends StatelessWidget {
  const N117SafeareaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("SafeArea")),
        body: ListView.builder(
          itemBuilder: (ctx, ind) => ListTile(
            title: Text("This is the $ind Tile"),
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}
