import 'package:flutter/material.dart';
import 'package:get/get.dart';

class N37AnimatedIconScreen extends StatefulWidget {
  N37AnimatedIconScreen({Key? key}) : super(key: key);

  @override
  _N37AnimatedIconScreenState createState() => _N37AnimatedIconScreenState();
}

class _N37AnimatedIconScreenState extends State<N37AnimatedIconScreen>
    with TickerProviderStateMixin {
  late Animation<double> myAnimation;
  late AnimationController myCtrl;

  @override
  void initState() {
    // final tween = Tween(begin: 0.0, end: 1.0);
    myCtrl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    myAnimation = myCtrl;
    myAnimation.addListener(_mySetState);
    super.initState();
  }

  @override
  void dispose() {
    myAnimation.removeListener(_mySetState);
    super.dispose();
  }

  void _mySetState() {
    setState(() {});
  }

  Column _myAniIcon(AnimatedIconData icon, String name) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedIcon(
          icon: icon,
          progress: myAnimation,
        ),
        Text(name),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final c = AniType.forward.obs;
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 6,
        children: [
          _myAniIcon(AnimatedIcons.add_event, "add_event"),
          _myAniIcon(AnimatedIcons.event_add, "event_add"),
          _myAniIcon(AnimatedIcons.arrow_menu, "arrow_menu"),
          _myAniIcon(AnimatedIcons.menu_arrow, "menu_arrow"),
          _myAniIcon(AnimatedIcons.close_menu, "close_menu"),
          _myAniIcon(AnimatedIcons.menu_close, "menu_close"),
          _myAniIcon(AnimatedIcons.ellipsis_search, "ellipsis_search"),
          _myAniIcon(AnimatedIcons.search_ellipsis, "search_ellipsis"),
          _myAniIcon(AnimatedIcons.home_menu, "home_menu"),
          _myAniIcon(AnimatedIcons.menu_home, "menu_home"),
          _myAniIcon(AnimatedIcons.list_view, "list_view"),
          _myAniIcon(AnimatedIcons.view_list, "view_list"),
          _myAniIcon(AnimatedIcons.pause_play, "pause_play"),
          _myAniIcon(AnimatedIcons.play_pause, "play_pause"),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          ElevatedButton.icon(
              onPressed: () {
                c.value = AniType.forward;
                myCtrl.reset();
                myCtrl.forward();
                // myCtrl.repeat();
              },
              icon: Icon(Icons.forward),
              label: Text("forwald")),
          ElevatedButton.icon(
              onPressed: () {
                c.value = AniType.reverse;
                myCtrl.value = 1.0;
                myCtrl.reverse();
                // myCtrl.repeat();
              },
              icon: Icon(Icons.arrow_back),
              label: Text("reverse"))
        ],
      ),
    );
  }
}

enum AniType { forward, reverse }
