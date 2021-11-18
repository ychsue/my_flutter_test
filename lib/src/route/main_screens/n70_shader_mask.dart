import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:http/http.dart' as http;

import 'package:get/get.dart';

class N70ShaderMaskScreen extends StatelessWidget {
  const N70ShaderMaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final img = Rxn<ui.Image>();
    loadUiImage(
            // "https://product-image.juniqe-production.juniqe.com/media/catalog/product/cache/x800/401/62/401-62-101P.jpg"
            //
            'http://2.bp.blogspot.com/-vNNnH4K0nZk/TpMsD8cFHvI/AAAAAAAAAeM/r6-5dB1WiY8/s640/tullymore2.jpg')
        .then((data) {
      img.value = data;
    });
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ShaderMask(
              blendMode: BlendMode.hardLight,
              shaderCallback: (rect) {
                return RadialGradient(
                        colors: [Colors.yellow, Colors.deepOrange])
                    .createShader(rect);
              },
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    "Inside a Container",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),

          // Check out this StackOverflow's Q&A
          // https://stackoverflow.com/questions/61966819/how-to-create-imageshader-in-flutter
          //
          Expanded(
            child: Obx(() => (img.value != null)
                ? ShaderMask(
                    shaderCallback: (rect) {
                      return ImageShader(img.value!, TileMode.mirror,
                          TileMode.mirror, Matrix4.identity().storage);
                    },
                    child: Text(
                      "Got it!",
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.w900,
                        color: Colors.yellow,
                      ),
                    ),
                  )
                : Text('loading')),
          ),
        ],
      ),
    );
  }
}

Future<ui.Image> loadUiImage(String stUrl) async {
  final url = Uri.parse(stUrl);
  final response = await http.get(url);
  final completer = Completer<ui.Image>();
  ui.decodeImageFromList(response.bodyBytes, completer.complete);
  return completer.future;
}
