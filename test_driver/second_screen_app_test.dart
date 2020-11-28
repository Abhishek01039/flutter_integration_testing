import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

import 'screens/app_screen.dart';
import 'screens/second_screen.dart';

main(List<String> args) {
  FlutterDriver flutterDriver;
  AppScreen appScreen;
  SecondScreen secondScreen;
  // setup the flutter driver
  setUp(() async {
    flutterDriver = await FlutterDriver.connect();
    secondScreen = SecondScreen(flutterDriver);
    appScreen = AppScreen(flutterDriver);
  });

  // clsoe the flutter driver
  tearDown(() {
    flutterDriver?.close();
  });
  group('description', () {
    test('tap to floating action button to navigate', () async {
      await appScreen.pressNavigationButton();
    });
    test('Show the Network Image', () async {
      await secondScreen.verifyImageIsDisplayed();
    });
  });
}
