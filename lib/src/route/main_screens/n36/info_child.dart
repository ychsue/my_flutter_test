import 'package:flutter/material.dart';
import 'package:test2/src/route/main_screens/n36/info_i_w.dart';

class InfoChild extends StatelessWidget {
  const InfoChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final info = InfoIW.of(context);
    return Container(
      child: Center(
        child: Text(info?.score.toString() ?? "No Score"),
      ),
    );
  }
}
