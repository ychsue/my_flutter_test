import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n73/%F0%9F%91%81%EF%B8%8Fmy_clipper.dart';
import 'package:test2/src/route/main_screens/n73/my_bezier.dart';
import 'package:test2/src/route/main_screens/n73/my_random_clipper.dart';
import 'package:test2/src/route/main_screens/n73/my_triangular_clipper.dart';

class N73ClipPathScreen extends StatelessWidget {
  const N73ClipPathScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyClipper(
          title: "Triangular",
          clipper: MyTriangularClipper(),
        ),
        MyClipper(
          clipper: MyRandomClipper(),
          title: "Random",
        ),
        MyClipper(
          clipper: MyBezierClipper(),
          title: "Bezier",
        ),
      ],
    );
  }
}
