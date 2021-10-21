import 'package:flutter/material.dart';

class ACFWithLayoutBuilder extends StatelessWidget {
  const ACFWithLayoutBuilder({Key? key, required this.is1stOne})
      : super(key: key);

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
            child: Text("with layoutBuilder!"),
            decoration:
                BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          ),
          secondChild: ElevatedButton(
            onPressed: null,
            child: Text("LayoutBuilder is used"),
          ),
          crossFadeState:
              is1stOne ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(seconds: 2),
          layoutBuilder: (top, topKey, bottom, bottomkey) {
            return IntrinsicHeight(
              // height: 100,
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: bottom,
                    key: bottomkey,
                    top: 0,
                  ),
                  Positioned(
                    child: top,
                    key: topKey,
                    // top: 0,
                  ),
                ],
              ),
            );
          },
        ),
        Container(
          color: Colors.yellow,
          height: 50,
        ),
      ],
    );
  }
}
