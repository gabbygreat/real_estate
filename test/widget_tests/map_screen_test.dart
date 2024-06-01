import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/utils/utils.dart';

void main() {
  testWidgets('HomeScreen Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ScreenUtilInit(
          designSize: Size(393, 852),
          minTextAdapt: true,
          child: MapScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Verify if the Scaffold widget is rendered
    expect(find.byType(Scaffold), findsOneWidget);

    // Verify if the AppBar widget is rendered
    expect(find.byType(AppBar), findsOneWidget);
  });
}
