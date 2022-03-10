import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class N103SlidablePackage extends StatelessWidget {
  const N103SlidablePackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cList = List<int>.generate(10, (index) => index + 1).obs;
    return Scaffold(
      appBar: AppBar(title: Text("Slidable package: its example is used here")),
      body: Obx(
        () => ListView(
          children: List.generate(
            cList.length,
            (ind) => Slidable(
              // Specify a key if the Slidable is dismissible.
              key: ValueKey(cList[ind]),

              // The start action pane is the one at the left or the top side.
              startActionPane: ActionPane(
                // A motion is a widget used to control how the pane animates.
                motion: const ScrollMotion(),

                // A pane can dismiss the Slidable.
                dismissible: DismissiblePane(onDismissed: () {
                  cList.remove(cList[ind]);
                }),

                // All actions are defined in the children parameter.
                children: [
                  // A SlidableAction can have an icon and/or a label.
                  SlidableAction(
                    onPressed: (btx) {
                      cList.remove(cList[ind]);
                    },
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'Delete',
                  ),
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF21B7CA),
                    foregroundColor: Colors.white,
                    icon: Icons.share,
                    label: 'Share',
                  ),
                ],
              ),

              // The end action pane is the one at the right or the bottom side.
              endActionPane: const ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    // An action can be bigger than the others.
                    flex: 2,
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF7BC043),
                    foregroundColor: Colors.white,
                    icon: Icons.archive,
                    label: 'Archive',
                  ),
                  SlidableAction(
                    onPressed: doNothing,
                    backgroundColor: Color(0xFF0392CF),
                    foregroundColor: Colors.white,
                    icon: Icons.save,
                    label: 'Save',
                  ),
                ],
              ),

              // The child of the Slidable is what the user sees when the
              // component is not dragged.
              child: ListTile(title: Text('Slide me: ${cList[ind]}')),
            ),
          ),
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
