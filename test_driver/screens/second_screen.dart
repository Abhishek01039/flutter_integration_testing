import 'dart:io';

import 'package:flutter_driver/flutter_driver.dart';

class SecondScreen {
  FlutterDriver driver;
  final networkImage = find.byValueKey("Image");
  SecondScreen(FlutterDriver flutterDriver) {
    driver = flutterDriver;
  }
  Future<void> verifyImageIsDisplayed() async {
    sleep(Duration(seconds: 5));
    // Waits until finder locates the target.
    await driver.waitFor(networkImage).then((value) {
      print("Image is there in center");
    });
  }
}
