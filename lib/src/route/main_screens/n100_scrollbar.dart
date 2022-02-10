import 'package:flutter/material.dart';

class N100ScrollbarScreen extends StatelessWidget {
  const N100ScrollbarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sctrl1 = ScrollController();
    final sctrl2 = ScrollController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Scrollbar"),
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            controller: sctrl1,
            itemBuilder: (context, index) => Text("No Scrollbar $index"),
            itemCount: 20,
          ),
        ),
        Expanded(
            child: Text(
                "Both of Scrollbar and ListView should use the same controller")),
        Expanded(
          child: Scrollbar(
            showTrackOnHover: true,
            controller: sctrl2,
            child: ListView.builder(
              controller: sctrl2,
              itemBuilder: (context, index) => Text("With Scrollbar $index"),
              itemCount: 20,
            ),
          ),
        ),
      ]),
    );
  }
}
