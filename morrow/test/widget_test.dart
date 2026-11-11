import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:morrow/app.dart';

void main() {
  setUp(() {
    // Disable animation delays in tests so timers don't stay pending
    Animate.restartOnHotReload = false;
  });

  testWidgets('Morrow app smoke test - renders login page', (WidgetTester tester) async {
    // Run in UI mode without requiring live Firebase connection
    await tester.pumpWidget(const MorrowApp(firebaseReady: false));
    await tester.pump(const Duration(seconds: 2));

    expect(find.text('MORROW'), findsWidgets);
    expect(find.text('Welcome Back'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);
  });
}
