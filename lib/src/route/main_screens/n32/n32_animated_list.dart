import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:test2/src/route/main_screens/n32/user_controller.dart';
import 'package:test2/src/route/main_screens/n32/user_model.dart';
import 'package:url_launcher/url_launcher.dart';

class N32AnimatedListScreen extends StatelessWidget {
  const N32AnimatedListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<AnimatedListState> _gKey = GlobalKey<AnimatedListState>();
    var c = UserController();
    final _bufUser = UserModel(name: "name", imgUrl: "imgUrl");
    var _index = 0;
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Flexible(
            child: Obx(() => AnimatedList(
                  key: _gKey,
                  initialItemCount: c.users.length,
                  itemBuilder: (btx, index, animation) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Dismissible(
                        key: ValueKey(c.users[index].name),
                        child: SlideTransition(
                          position: animation.drive(Tween<Offset>(
                              begin: Offset(50, 0), end: Offset(0, 0))),
                          child: ListTile(
                            title: Text(c.users[index].name),
                            leading: Image.network(c.users[index].imgUrl),
                          ),
                        ),
                        onDismissed: (dir) {
                          c.users.removeAt(index);
                          _gKey.currentState?.removeItem(
                              index,
                              (context, animation) => FadeTransition(
                                  opacity: animation
                                      .drive(Tween<double>(begin: 1, end: 0.5)),
                                  child: Container(
                                    color: Colors.red,
                                  )),
                              duration: const Duration(seconds: 1));
                        },
                      ),
                    );
                  },
                )),
          ),
          Flexible(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Name:'),
                  onChanged: (v) {
                    _bufUser.name = v;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'ImgUrl:'),
                  onChanged: (v) {
                    _bufUser.imgUrl = v;
                  },
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'index:'),
                  // keyboardType: TextInputType.number,
                  onChanged: (v) {
                    _index = int.parse(v);
                  },
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    c.users.insert(
                        _index,
                        UserModel(
                            name: _bufUser.name, imgUrl: _bufUser.imgUrl));
                    _gKey.currentState?.insertItem(_index,
                        duration: const Duration(milliseconds: 100));
                  },
                  icon: Icon(Icons.add),
                  label: Text("Add One User"),
                ),
                Expanded(
                  child: Obx(
                    () => ListView(
                      children: List.generate(
                        c.users.length,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () => launch(c.users[index].imgUrl),
                            child: Text("Source $index"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
