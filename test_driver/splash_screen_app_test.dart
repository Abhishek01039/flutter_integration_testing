import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'screens/splash_screen.dart';

main() {
  SplashScreen splashScreen;
  FlutterDriver flutterDriver;

  setUpAll(() async {
    flutterDriver = await FlutterDriver.connect();
    splashScreen = SplashScreen(flutterDriver);
  });

  tearDownAll(() {
    flutterDriver?.close();
  });

  test("Show Logo of app", () async {
    await splashScreen.verifyNetworkImage();
  });

  // test("App Name", () async {
  //   await splashScreen.verifyAppText();
  // });
}
