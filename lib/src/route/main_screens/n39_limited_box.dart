import 'dart:math';

import 'package:flutter/material.dart';

class N39LimitedBoxScreen extends StatelessWidget {
  const N39LimitedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, ind) =>
            // Without LimitedBox, you'll see nothing since that a Container will set its size as 0 when its parent sets no constraint to it.
            LimitedBox(
          maxHeight: 40,
          child: Container(
            color:
                Color.lerp(Colors.red, Colors.blue, Random(ind).nextDouble()),
          ),
        ),
      ),
    );
  }
}
