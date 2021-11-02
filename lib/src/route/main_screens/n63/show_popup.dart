import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void showPopup(BuildContext ctx, RxString c) {
  final lists = [
    ["I am here!", "For what?"],
    ["It is a funny program!", "Let's play it."],
    ["This is my default one.", "Yes, I'm the default one."],
    ["Uh... Destructed.", "Hm... What can I say?"],
  ];
  showCupertinoModalPopup(
      context: ctx,
      builder: (ctx1) => CupertinoActionSheet(
            actions: [
              for (var list in lists)
                CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(ctx1).pop(list[0]);
                  },
                  child: Text(list[1]),
                  isDefaultAction: (list == lists[2]),
                  isDestructiveAction: (list == lists[3]),
                ),
            ],
            cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(ctx1).pop("cancel");
                },
                child: Text("I'm canceled")),
          )).then((value) => c.value = value);
}
