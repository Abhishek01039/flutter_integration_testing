#!/bin/sh
# Run integration tests
flutter drive --target=test_driver/splash_screen_app.dart
flutter drive --target=test_driver/app.dart --no-build
flutter drive --target=test_driver/second_screen_app.dart --no-build

