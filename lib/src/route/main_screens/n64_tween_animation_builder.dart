import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N64TweenAnimationBuilderScreen extends StatelessWidget {
  const N64TweenAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _imageUrl1 =
        'https://thymeandlove.com/wp-content/uploads/2017/01/DSC_2030-FG13.jpg';
    final _colors = [Colors.red, Colors.blue];
    final c = 0.obs; // 0 & 1
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: IconButton(
          onPressed: () {
            c.value = (c.value == 0) ? 1 : 0;
          },
          icon: Icon(Icons.transform)),
      body: Obx(
        () => Container(
          child: TweenAnimationBuilder<Color?>(
            child: Image.network(_imageUrl1),
            duration: const Duration(seconds: 2),
            tween: ColorTween(begin: Colors.green, end: _colors[c.value]),
            builder: (BuildContext context, Color? value, Widget? child) {
              return ColorFiltered(
                  child: child,
                  colorFilter: ColorFilter.mode(
                      value ?? Colors.purple, BlendMode.modulate));
            },
          ),
        ),
      ),
    );
  }
}
