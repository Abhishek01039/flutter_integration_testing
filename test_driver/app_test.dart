// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

import 'screens/app_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  group('counter app', () {
    FlutterDriver driver;
    AppScreen appScreen;
    SplashScreen splashScreen;

    /// connect to [FlutterDriver]
    setUpAll(() async {
      driver = await FlutterDriver.connect();
      appScreen = AppScreen(driver);
      splashScreen = SplashScreen(driver);
    });

    /// close the driver
    tearDownAll(() async {
      driver?.close();
    });
    test("Show Splash Screen", () async {
      await splashScreen.verifyNetworkImage();
      await splashScreen.verifyAppText();
    });
    test('AppBar is Flutter Demo Home Page', () async {
      await appScreen.verifyTheAppBarText();
    });

    test('Column is in center', () async {
      await appScreen.verifyColumnIsInCenter();
    });

    test("start with 0", () async {
      await appScreen.verifyCounterTextIsZero();
    });

    test("pressed floating action button twice", () async {
      await appScreen.pressFloatingActionButtonTwice();
    });
  });
}
