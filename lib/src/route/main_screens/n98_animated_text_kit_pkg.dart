import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class N98AnimatedTextKitPkg extends StatelessWidget {
  const N98AnimatedTextKitPkg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedTextKit"),
      ),
      body: FractionallySizedBox(
        widthFactor: 0.9,
        heightFactor: 0.9,
        child: FittedBox(
          child: AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText("This (typer)"),
              RotateAnimatedText("is (rotate)"),
              ScaleAnimatedText("a (Scale)"),
              ColorizeAnimatedText(
                "Colorized One",
                textStyle: TextStyle(fontSize: 20, height: 10),
                colors: [
                  Colors.yellow,
                  Colors.red,
                  Colors.blue,
                  Colors.green,
                ],
              ),
              FadeAnimatedText("and (Fade)"),
              WavyAnimatedText("中文 (Wavy)"),
            ],
          ),
        ),
      ),
    );
  }
}
