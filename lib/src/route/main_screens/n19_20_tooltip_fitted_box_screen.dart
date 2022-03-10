import 'package:flutter/material.dart';

class N19TooltipScreen extends StatelessWidget {
  const N19TooltipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('This is a test'),
        Expanded(
          child: Scaffold(
            appBar: AppBar(title: Text("FittedBox and Tooltip")),
            body: Column(
              children: [
                Container(
                  child: SizedBox(
                    height: 300,
                    width: 900,
                    child: FittedBox(
                      child: Image.asset('images/101.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Tooltip(
                  message: 'Hello',
                  child: Icon(Icons.safety_divider),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: const LinearGradient(
                        colors: [Colors.red, Colors.amber]),
                    // image: DecorationImage(
                    //   image: Image.asset('images/101.jpg').image,
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                  showDuration: const Duration(seconds: 2),
                  textStyle: const TextStyle(
                    fontSize: 125,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
