import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/main.dart' as app;
import 'package:real_estate/utils/utils.dart';

void main() {
  testWidgets('Integration Test', (WidgetTester tester) async {
    // Build the app and trigger frame rendering
    app.main();
    await tester.pumpAndSettle();

    // Verify if the MainScreen widget is rendered
    expect(find.byType(MainScreen), findsOneWidget);

    // Verify if the AppBar widget is rendered
    expect(find.byType(AppBar), findsOneWidget);

    // Verify if the CutomNavBar widget is rendered
    final cutomNavBarFinder = find.byType(CutomNavBar);
    expect(cutomNavBarFinder, findsOneWidget);

    // Find all BottomIcon widgets inside CutomNavBar
    final bottomIconFinders = find.descendant(
      of: cutomNavBarFinder,
      matching: find.byType(BottomIcon),
    );

    // Convert the single Finder into an Iterable using findAll
    final count = bottomIconFinders.evaluate().length;

    // Simulate taps on each BottomIcon widget
    for (int index = 0; index <= count - 1; index++) {
      await tester.tap(bottomIconFinders.at(index));
    }
  });
}
