import 'package:flutter_driver/flutter_driver.dart';

class SplashScreen {
  final networkImageAlongWithColumn = find.byType("Column");
  final appText = find.descendant(
      of: find.byType('Text'), matching: find.text('Splash Screen'));

  FlutterDriver _driver;
  SplashScreen(FlutterDriver flutterDriver) {
    _driver = flutterDriver;
  }

  Future<void> verifyNetworkImage() async {
    await _driver.waitFor(networkImageAlongWithColumn);
  }

  Future<void> verifyAppText() async {
    await _driver.waitFor(appText);
  }
}
