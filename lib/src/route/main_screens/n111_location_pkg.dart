import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:location/location.dart';

class N111LocationPkg extends StatefulWidget {
  const N111LocationPkg({Key? key}) : super(key: key);

  @override
  State<N111LocationPkg> createState() => _N111LocationPkgState();
}

class _N111LocationPkgState extends State<N111LocationPkg> {
  late Location location;
  final cLocationData = Rxn<LocationData>();
  final cmsg = "".obs;

  @override
  void initState() {
    super.initState();
    location = Location();
    turnOnLocation();
  }

  Future<void> turnOnLocation() async {
    cmsg.value = "1. check whether location is enabled\n";
    bool isEnabled = await location.serviceEnabled();
    if (isEnabled == false) {
      cmsg.value += "2.1. request service\n";
      isEnabled = await location.requestService();
      if (isEnabled == false) {
        cmsg.value += "Sorry, I cannot get the service";
        return;
      }
    }

    cmsg.value = "3. check permission\n";
    var permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.deniedForever) {
      cmsg.value += "it has been denied forever by the user";
      return;
    } else if (permissionGranted == PermissionStatus.denied) {
      cmsg.value += "3.1 ask for permission\n";
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted ||
          permissionGranted != PermissionStatus.grantedLimited) {
        cmsg.value += "The user denies the request for permission";
        return;
      }
    }

    cmsg.value += "4. get location\n";
    cLocationData.value = await location.getLocation();

    location.onLocationChanged.listen((event) {
      cmsg.value += "5. Location changed\n";
      cLocationData.value = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Package"),
      ),
      body: Obx(
        () => Column(
          children: [
            Expanded(child: Text(cmsg.value)),
            Expanded(
              child: SingleChildScrollView(
                child: Text(cLocationData.value.toString()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
