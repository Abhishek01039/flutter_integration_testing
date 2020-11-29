import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

import 'screens/app_screen.dart';
import 'screens/second_screen.dart';
import 'screens/splash_screen.dart';

main(List<String> args) {
  FlutterDriver flutterDriver;
  SplashScreen splashScreen;
  AppScreen appScreen;
  SecondScreen secondScreen;
  // setup the flutter driver
  setUp(() async {
    flutterDriver = await FlutterDriver.connect();
    splashScreen = SplashScreen(flutterDriver);
    secondScreen = SecondScreen(flutterDriver);
    appScreen = AppScreen(flutterDriver);
  });

  // clsoe the flutter driver
  tearDown(() {
    flutterDriver?.close();
  });
  group('description', () {
    test('User should able to see the see splash screen', () async {
      await splashScreen.verifyNetworkImage();
      // await splashScreen.verifyAppText();
    });
    test('tap to floating action button to navigate', () async {
      await appScreen.pressNavigationButton();
    });
    test('Show the Network Image', () async {
      await secondScreen.verifyImageIsDisplayed();
    });
  });
}
