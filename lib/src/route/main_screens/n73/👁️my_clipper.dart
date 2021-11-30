import 'package:flutter/material.dart';

class MyClipper extends StatelessWidget {
  const MyClipper({Key? key, required this.clipper, required this.title})
      : super(key: key);
  final CustomClipper<Path> clipper;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ClipPath(
      clipper: clipper,
      child: Container(
        child: Center(
          child: Text(title),
        ),
        color: Colors.yellow,
      ),
    ));
  }
}
