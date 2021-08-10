import 'dart:math';

import 'package:flutter/material.dart';

class N27AnimatedBuilderScreen extends StatefulWidget {
  N27AnimatedBuilderScreen({Key? key}) : super(key: key);

  @override
  _N27AnimatedBuilderScreenState createState() =>
      _N27AnimatedBuilderScreenState();
}

class _N27AnimatedBuilderScreenState extends State<N27AnimatedBuilderScreen>
    with TickerProviderStateMixin {
  late AnimationController _aniCtrl;
  final Tween<double> _baseTween = Tween(begin: 0, end: 2 * pi);
  Animation<double>? animation;

  void _setState() {
    setState(() {});
  }

  @override
  void initState() {
    _aniCtrl =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _runAnimation(CurveTween(curve: Curves.bounceIn));
    super.initState();
  }

  void _runAnimation(CurveTween ct) {
    animation?.removeListener(_setState);
    _aniCtrl.reset();
    animation = _baseTween.chain(ct).animate(_aniCtrl)..addListener(_setState);
    _aniCtrl.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          children: [
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('bounceIn'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.bounceIn)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('bounceInOut'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.bounceInOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('bounceOut'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.bounceOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('decelerate'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.decelerate)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('linear'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.linear)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('ease'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.ease)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeIn'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeIn)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInBack'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInBack)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInCirc'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInCirc)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInCubic'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInCubic)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInExpo'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInExpo)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOut'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutBack'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutBack)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutCirc'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutCirc)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutCubic'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutCubic)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutExpo'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutExpo)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutQuad'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutQuad)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutQuart'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutQuart)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutQuint'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutQuint)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInOutSine'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInOutSine)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInQuad'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInQuad)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInQuart'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInQuart)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInQuint'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInQuint)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInSine'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeInSine)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeInToLinear'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeInToLinear)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOut'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutBack'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeOutBack)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutCirc'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeOutCirc)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutCubic'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeOutCubic)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutExpo'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeOutExpo)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutQuad'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeOutQuad)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutQuart'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeOutQuart)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutQuint'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.easeOutQuint)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('easeOutSine'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.easeOutSine)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('elasticIn'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.elasticIn)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('elasticInOut'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.elasticInOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('elasticOut'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.elasticOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('fastLinearToSlowEaseIn'),
              ),
              onTap: () => _runAnimation(
                  CurveTween(curve: Curves.fastLinearToSlowEaseIn)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('fastOutSlowIn'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.fastOutSlowIn)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('linearToEaseOut'),
              ),
              onTap: () =>
                  _runAnimation(CurveTween(curve: Curves.linearToEaseOut)),
            ),
            InkWell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('slowMiddle'),
              ),
              onTap: () => _runAnimation(CurveTween(curve: Curves.slowMiddle)),
            ),
          ],
        ),
      ),
      body: Container(
        child: Center(
          child: AnimatedBuilder(
            animation: animation!,
            child: FlutterLogo(
              size: 200,
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: animation!.value,
                child: child,
              );
            },
          ),
        ),
      ),
    );
  }
}
