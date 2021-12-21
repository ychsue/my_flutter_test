import 'package:flutter/material.dart';

class MyBtnTransition extends AnimatedWidget {
  MyBtnTransition({required Animation<double> myWidth})
      : super(listenable: myWidth);

  Animation<double> get myWidth => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => print("Hello"),
      child: Text("Click me!"),
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(width: myWidth.value),
        ),
      ),
    );
  }
}
