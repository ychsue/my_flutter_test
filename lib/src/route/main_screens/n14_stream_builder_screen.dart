import 'package:flutter/material.dart';

class N14StreamBuilderScreen extends StatefulWidget {
  N14StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  _N14StreamBuilderScreenState createState() => _N14StreamBuilderScreenState();
}

class _N14StreamBuilderScreenState extends State<N14StreamBuilderScreen> {
  Color? _color;
  late Stream<DateTime> _clockStream;
  bool _isDisposing = false;

  @override
  void dispose() {
    _isDisposing = true;
    _clockStream.take(0);
    super.dispose();
  }

  @override
  void initState() {
    _color = Colors.lightBlue;
    _clockStream = _clock().asBroadcastStream();
    _clockStream.listen((event) {
      switch (event.second) {
        case 0:
          _color = Colors.red;
          setState(() {});
          break;
        case 10:
          _color = Colors.orange;
          setState(() {});
          break;
        case 20:
          _color = Colors.yellow;
          setState(() {});
          break;
        case 30:
          _color = Colors.green;
          setState(() {});
          break;
        case 40:
          _color = Colors.blue;
          setState(() {});
          break;
        case 50:
          _color = Colors.purple;
          setState(() {});
          break;
        default:
      }
    });
    super.initState();
  }

  Stream<DateTime> _clock() async* {
    do {
      await Future.delayed(const Duration(seconds: 1));
      yield DateTime.now();
    } while (!_isDisposing);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: 300,
              height: 300,
              color: _color,
            ),
            Center(
              child: StreamBuilder<DateTime>(
                stream: _clockStream,
                builder: (ctx, snapshot) {
                  if (!snapshot.hasData) return CircularProgressIndicator();
                  return Column(
                    children: [
                      Text(
                          '${snapshot.data!.hour.toString().padLeft(2, '0')} : ${snapshot.data!.minute.toString().padLeft(2, '0')} : ${snapshot.data!.second.toString().padLeft(2, '0')}'),
                      AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: 100,
                        height: 100,
                        color: ((snapshot.data!.second / 10) <= 1)
                            ? Colors.red
                            : (snapshot.data!.second / 10 <= 2)
                                ? Colors.orange
                                : (snapshot.data!.second / 10 <= 3)
                                    ? Colors.yellow
                                    : (snapshot.data!.second / 10 <= 4)
                                        ? Colors.green
                                        : (snapshot.data!.second / 10 <= 5)
                                            ? Colors.blue
                                            : (snapshot.data!.second / 10 <= 6)
                                                ? Colors.purple
                                                : Colors.transparent,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
