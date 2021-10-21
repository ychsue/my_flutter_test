import 'package:flutter/material.dart';

class UnConstrainedACF extends StatelessWidget {
  const UnConstrainedACF({Key? key, required this.is1stOne}) : super(key: key);

  final bool is1stOne;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.green,
          height: 50,
        ),
        AnimatedCrossFade(
          firstChild: Container(
            padding: EdgeInsets.all(50),
            child: Text("noooo constraint!"),
            decoration:
                BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          ),
          secondChild: ElevatedButton(
            onPressed: null,
            child: Text("No constraint"),
          ),
          crossFadeState:
              is1stOne ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
        ),
        Container(
          color: Colors.yellow,
          height: 50,
        ),
      ],
    );
  }
}
