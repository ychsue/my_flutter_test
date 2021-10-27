import 'package:flutter/material.dart';

class N61ColorFilteredScreen extends StatelessWidget {
  const N61ColorFilteredScreen({Key? key}) : super(key: key);

  final _imageUrl1 =
      'https://thymeandlove.com/wp-content/uploads/2017/01/DSC_2030-FG13.jpg';
  final _imageUrl2 =
      'https://images.unsplash.com/photo-1531306728370-e2ebd9d7bb99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kindacode.com'),
      ),
      body: Column(
        children: [
          // The original image
          Expanded(
              child: Image.network(
            _imageUrl1,
            key: ValueKey("img1"),
          )),
          Divider(),
          ElevatedButton(
            onPressed: null,
            child: Text("Test"),
          ),
          Divider(),
          // The black-and-white image
          Expanded(
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
              child: Image.network(
                _imageUrl2,
                key: ValueKey("img2"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(),
  //     body: Column(
  //       children: [
  //         Expanded(
  //           child: Stack(
  //             children: [
  //               Positioned(
  //                 top: 0,
  //                 left: 0,
  //                 bottom: 0,
  //                 right: 0,
  //                 child: Image.network(
  //                   "https://thymeandlove.com/wp-content/uploads/2017/01/DSC_2030-FG13.jpg",
  //                   fit: BoxFit.fill,
  //                 ),
  //               ),
  //               Center(
  //                   child: Text(
  //                 "Origin",
  //                 style: TextStyle(color: Colors.yellow),
  //               )),
  //             ],
  //           ),
  //         ),

  //         Expanded(
  //           child: Stack(
  //             children: [
  //               Positioned(
  //                 top: 0,
  //                 left: 0,
  //                 bottom: 0,
  //                 right: 0,
  //                 child: ColorFiltered(
  //                   colorFilter:
  //                       ColorFilter.mode(Colors.grey, BlendMode.difference),
  //                   child: Image.network(
  //                     "https://thymeandlove.com/wp-content/uploads/2017/01/DSC_2030-FG13.jpg",
  //                     fit: BoxFit.fill,
  //                   ),
  //                 ),
  //               ),
  //               Center(
  //                   child: Text(
  //                 "Origin",
  //                 style: TextStyle(color: Colors.yellow),
  //               )),
  //             ],
  //           ),
  //         ),

  //         // Expanded(
  //         //   child: Stack(
  //         //     children: [
  //         //       ColorFiltered(
  //         //         child: Image.network(
  //         //             "https://thymeandlove.com/wp-content/uploads/2017/01/DSC_2030-FG13.jpg"),
  //         //         colorFilter:
  //         //             ColorFilter.mode(Colors.grey, BlendMode.saturation),
  //         //       ),
  //         //       Center(
  //         //           child: Text(
  //         //         "With BlendMode.saturation",
  //         //         style: TextStyle(color: Colors.yellow),
  //         //       )),
  //         //     ],
  //         //   ),
  //         // ),
  //       ],
  //     ),
  //   );
  // }
}
