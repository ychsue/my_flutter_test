import 'dart:ui';

import 'package:flutter/material.dart';

class N24BackdropFilterScreen extends StatelessWidget {
  const N24BackdropFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Stack(
            children: <Widget>[
              Image.asset('assets/images/101.jpg'),
              Positioned(
                top: 20,
                left: 100,
                width: 200,
                height: 200,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 15,
                      sigmaY: 15,
                    ),
                    child: Container(
                      // width: 200,
                      // height: 200,
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
