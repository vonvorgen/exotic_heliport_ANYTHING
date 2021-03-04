// @dart = 2.8
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gifter/main.dart' as app;
import 'package:gifter/onboarding/login_form.dart';
import 'package:gifter/providers.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  // This line enables the extension.
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();

  group('end-to-end test', () async {
    await container.read(secureStorageProvider).deleteAll();
    testWidgets('Login Form is show', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Finds the floating action button to tap on.
      final email = find.byKey(const ValueKey(LoginForm.keyEmailField));
      tester.enterText(email, "example@example.com");

      final password = find.byKey(const ValueKey(LoginForm.keyPasswordField));
      tester.enterText(password, "example_password");

      final login = find.byKey(const ValueKey(LoginForm.keyLogin));
      await tester.tap(login);

      await tester.pumpAndSettle();

      expect(find.text(app.appTitle), findsOneWidget);
    });
  });
}
