import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:get/get.dart';

class N108BadgesPackage extends StatelessWidget {
  const N108BadgesPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cBadgeColor = Colors.red.obs;
    final cShowBadge = true.obs;
    final cNum = 0.obs;
    final cAnimationTypeIndex = 0.obs;
    final aniTypes = [
      BadgeAnimationType.fade,
      BadgeAnimationType.scale,
      BadgeAnimationType.slide
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Badges Package")),
      floatingActionButton: IconButton(
        onPressed: () => cNum.value++,
        icon: Icon(Icons.plus_one),
        color: Colors.red,
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Text("text:"),
                    title: Center(
                      child: Badge(
                        badgeColor: cBadgeColor.value,
                        showBadge: cShowBadge.value,
                        position: BadgePosition.bottomStart(),
                        child: Container(
                          child: Text("A test"),
                          color: Colors.yellow,
                        ),
                        badgeContent: Text("${cNum.value}"),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text("Icon:"),
                    title: Center(
                      child: Badge(
                        badgeColor: cBadgeColor.value,
                        showBadge: cShowBadge.value,
                        child: Container(
                          child: Icon(Icons.access_time),
                          color: Colors.yellow,
                        ),
                        badgeContent: Text("${cNum.value}"),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text("Set animationType"),
                    title: ToggleButtons(
                      isSelected: List.generate(
                          3, (index) => index == cAnimationTypeIndex.value),
                      children: [
                        Text("fade"),
                        Icon(Icons.scale_sharp),
                        Icon(Icons.slideshow),
                      ],
                      onPressed: (i0) {
                        cAnimationTypeIndex.value = i0;
                      },
                    ),
                  ),
                  ListTile(
                    leading: Text("AnimationType:"),
                    title: Center(
                      child: Badge(
                        badgeColor: cBadgeColor.value,
                        showBadge: cShowBadge.value,
                        animationType: aniTypes[cAnimationTypeIndex.value],
                        child: Container(
                          child: Icon(Icons.access_time),
                          color: Colors.yellow,
                        ),
                        badgeContent: Text("${cNum.value}"),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text("No animation:"),
                    title: Center(
                      child: Badge(
                        toAnimate: false,
                        badgeColor: cBadgeColor.value,
                        showBadge: cShowBadge.value,
                        animationType: aniTypes[cAnimationTypeIndex.value],
                        child: Container(
                          child: Icon(Icons.access_time),
                          color: Colors.yellow,
                        ),
                        badgeContent: Text("${cNum.value}"),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Text("No Badge:"),
                    title: Center(
                      child: Badge(
                        badgeColor: cBadgeColor.value,
                        showBadge: false,
                        animationType: aniTypes[cAnimationTypeIndex.value],
                        child: Container(
                          child: Icon(Icons.access_time),
                          color: Colors.yellow,
                        ),
                        badgeContent: Text("${cNum.value}"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
