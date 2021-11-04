import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N65ImageScreen extends StatelessWidget {
  const N65ImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _imageUrl1 =
        'http://2.bp.blogspot.com/-vNNnH4K0nZk/TpMsD8cFHvI/AAAAAAAAAeM/r6-5dB1WiY8/s640/tullymore2.jpg';
    // 'https://thymeandlove.com/wp-content/uploads/2017/01/DSC_2030-FG13.jpg';
    final Rxn<double> cProgress = Rxn<double>();
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/tulip.jpg',
            semanticLabel: "鬱金香",
            color: Colors.red,
            colorBlendMode: BlendMode.saturation,
          )),
          Expanded(
            child: Image.network(
              _imageUrl1,
              loadingBuilder: (ctx, child, evt) {
                final tBytes = evt?.expectedTotalBytes?.toDouble();
                if (tBytes == null)
                  cProgress.value = null;
                else {
                  cProgress.value =
                      tBytes / evt!.cumulativeBytesLoaded.toDouble();
                }
                return child;
              },
            ),
          ),
          LinearProgressIndicator(
            value: cProgress.value,
          ),
        ],
      ),
    );
  }
}
