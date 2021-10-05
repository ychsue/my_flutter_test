import 'package:flutter/material.dart';

class N51FractionallySizedBoxScreen extends StatelessWidget {
  const N51FractionallySizedBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.2, // Means 0.2*1/3
            ),
          ),
          Divider(),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 0.3, // Means 0.3*1/3
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ),
          Divider(),
          Flexible(
            child: FractionallySizedBox(
              heightFactor: 1, // Means 1*1/3
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
