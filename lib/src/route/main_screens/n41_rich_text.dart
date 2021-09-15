import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class N41RichTextScreen extends StatefulWidget {
  N41RichTextScreen({Key? key}) : super(key: key);

  @override
  _N41RichTextScreenState createState() => _N41RichTextScreenState();
}

class _N41RichTextScreenState extends State<N41RichTextScreen> {
  late GestureRecognizer _myrecognizer;

  @override
  void initState() {
    _myrecognizer = TapGestureRecognizer()..onTap = _tapTheLink;
    super.initState();
  }

  void _tapTheLink() async {
    const url = 'https://google.com';
    (await canLaunch(url)) ? launch(url) : debugPrint("Cannot launch $url");
  }

  @override
  void dispose() {
    _myrecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RichText(
            text: TextSpan(
                text: "這是一",
                style: TextStyle(
                    decorationColor: Colors.blue,
                    decorationThickness: 3,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.wavy),
                children: [
              TextSpan(text: "測試", style: TextStyle(color: Colors.blue)),
              TextSpan(
                text: "超連結?",
                recognizer: _myrecognizer,
                style: TextStyle(
                  color: Colors.red,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ])),
      ),
    );
  }
}
