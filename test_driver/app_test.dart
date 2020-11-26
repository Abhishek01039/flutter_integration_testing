// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('counter app', () {
    final counterText = find.byValueKey("counter");
    final floatingButton = find.byValueKey("increment");
    final appBarText = find.byValueKey("app_title");
    final columnWidget = find.byType("Column");
    FlutterDriver driver;

    /// connect to [FlutterDriver]
    setUp(() async {
      driver = await FlutterDriver.connect();
    });

    /// close the driver
    tearDownAll(() async {
      driver?.close();
    });

    test('AppBar is Flutter Demo Home Page', () async {
      expect(await driver.getText(appBarText), "Flutter Demo Home Page");
    });

    test('Column is in center', () async {
      var driverOffset = await driver.getCenter(columnWidget);
      print(driverOffset);
    });

    test("start with 0", () async {
      expect(await driver.getText(counterText), "0");
    });

    test("pressed floating action button twice", () async {
      driver.tap(floatingButton);
      expect(await driver.getText(counterText), "1");
      driver.tap(floatingButton);
      expect(await driver.getText(counterText), "2");
    });
  });
}
