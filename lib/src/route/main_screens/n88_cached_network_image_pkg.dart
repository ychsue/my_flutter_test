import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class N88CachedNetworkImagePackage extends StatelessWidget {
  const N88CachedNetworkImagePackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          child: CachedNetworkImage(
            imageUrl: 'https://blurha.sh/assets/images/img1.jpg',
            placeholder: (ctx, url) => AspectRatio(
              aspectRatio: 1.6,
              child: BlurHash(
                hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(
                    'http://2.bp.blogspot.com/-vNNnH4K0nZk/TpMsD8cFHvI/AAAAAAAAAeM/r6-5dB1WiY8/s640/tullymore2.jpg'
                    // 'https://via.placeholder.com/300x150',
                    ),
                fit: BoxFit.cover,
                colorFilter: const ColorFilter.mode(
                  Colors.red,
                  BlendMode.colorBurn,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
