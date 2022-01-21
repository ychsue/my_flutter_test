import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class N88CachedNetworkImagePackage extends StatelessWidget {
  const N88CachedNetworkImagePackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final url1 = 'https://blurha.sh/assets/images/img1.jpg';
    final url2 =
        'http://2.bp.blogspot.com/-vNNnH4K0nZk/TpMsD8cFHvI/AAAAAAAAAeM/r6-5dB1WiY8/s640/tullymore2.jpg';
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(
          child: CachedNetworkImage(
            imageUrl: url1,
            placeholder: (ctx, url) => AspectRatio(
              aspectRatio: 1.6,
              child: BlurHash(
                hash: 'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
              ),
            ),
          ),
        ),
        ElevatedButton(onPressed: () => launch(url1), child: Text("Source")),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(url2
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
        ),
        ElevatedButton(onPressed: () => launch(url2), child: Text("Source")),
      ]),
    );
  }
}
