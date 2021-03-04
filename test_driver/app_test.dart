// @dart = 2.8
import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gifter/home/home_page.dart';
import 'package:gifter/main.dart';
import 'package:gifter/onboarding/login_form.dart';
import 'package:gifter/providers.dart';
import 'package:test/test.dart';

void main() {
  group('Gifter App without existing user session', () {
    // First, define the Finders and use them to locate widgets from the
    // test suite. Note: the Strings provided to the `byValueKey` method must
    // be the same as the Strings we used for the Keys in step 1.
    final emailFieldFinder = find.byValueKey(LoginForm.keyEmailField);
    final passwordFieldFinder = find.byValueKey(LoginForm.keyPasswordField);
    final loginButtonFinder = find.bySemanticsLabel(LoginForm.keyLogin);
    final homeAppTitle = find.bySemanticsLabel(HomePage.keyAppTitle);
    final container = ProviderContainer();

    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
      await container.read(secureStorageProvider).deleteAll();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      driver.close();
    });

    test('The ', () async {
      expect(await driver.getText(loginButtonFinder), "Login");
    });

    test('increments the counter', () async {
      // First, tap the button.
      await driver.tap(emailFieldFinder);
      await driver.enterText("example@example.com");

      await driver.tap(passwordFieldFinder);
      await driver.enterText("some_long_password!");

      await driver.tap(loginButtonFinder);
      expect(await driver.getText(homeAppTitle), appTitle);
    });
  });
}
