import 'package:get/get.dart';
import 'package:test2/src/route/main_screens/n32/user_model.dart';

class UserController {
  RxList<UserModel> users = <UserModel>[
    UserModel(
        name: "Alex",
        imgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Tulip-blossom.jpg/150px-Tulip-blossom.jpg"),
    UserModel(
        name: "Bob",
        imgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Triumph_Tulip_Tulipa_'Prinses_Irene'_Single_2859px.jpg/180px-Triumph_Tulip_Tulipa_'Prinses_Irene'_Single_2859px.jpg"),
    UserModel(
        name: "Chalie",
        imgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Tulipa_orphanidea_060506.jpg/130px-Tulipa_orphanidea_060506.jpg"),
    UserModel(
        name: "David",
        imgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Tulip_agenensis_ZE.jpg/173px-Tulip_agenensis_ZE.jpg"),
    UserModel(
        name: "Eric",
        imgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/5/52/Tulip_redoute.JPG"),
  ].obs;
}
