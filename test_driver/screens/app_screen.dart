import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

class AppScreen {
  final counterText = find.byValueKey("counter");
  final floatingButton = find.byValueKey("increment");
  final appBarText = find.byValueKey("app_title");
  final columnWidget = find.byType("Column");
  final navigationButton = find.byValueKey("navigation_button");
  FlutterDriver _driver;
  AppScreen(FlutterDriver flutterDriver) {
    _driver = flutterDriver;
  }

  Future<void> verifyTheAppBarText() async {
    expect(await _getTextByScreen(appBarText), "Flutter Demo Home Page");
  }

  Future<void> verifyColumnIsInCenter() async {
    var driverOffset = await _driver.getCenter(columnWidget);
    print(driverOffset);
  }

  Future<void> verifyCounterTextIsZero() async {
    expect(await _getTextByScreen(counterText), "0");
  }

  Future<void> pressFloatingActionButtonTwice() async {
    // tap floating action button
    await _driver.tap(floatingButton);
    expect(await _getTextByScreen(counterText), "1");

    // tap floating action button
    await _driver.tap(floatingButton);
    expect(await _getTextByScreen(counterText), "2");
  }

  Future<void> pressNavigationButton() async {
    await _driver.tap(navigationButton);
  }

  Future<String> _getTextByScreen(SerializableFinder finder) async {
    return await _driver.getText(finder);
  }
}
