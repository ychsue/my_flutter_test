import 'package:flutter/material.dart';

class N21LayoutBuilderScreen extends StatelessWidget {
  const N21LayoutBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            child: Text("Hello"),
            height: 200,
          ),
          Divider(),
          Expanded(
            child: LayoutBuilder(builder: (ctx, constraint) {
              // Smaller one
              if (constraint.maxHeight > 300)
                return Center(
                  child: Text('larger', style: TextStyle(fontSize: 40)),
                );
              return Center(
                  child: Text(
                'smaller',
                style: TextStyle(fontSize: 40),
              ));
            }),
          ),
        ],
      ),
    );
  }
}
