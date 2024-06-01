import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/utils/utils.dart';
import 'package:real_estate/views/home/widget.dart';

void main() {
  testWidgets('HomeScreen Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ScreenUtilInit(
          designSize: Size(393, 852),
          minTextAdapt: true,
          child: HomeScreen(),
        ),
      ),
    );
    await tester.pumpAndSettle();

    // Verify if the Scaffold widget is rendered
    expect(find.byType(Scaffold), findsOneWidget);

    // Verify if the AppBar widget is rendered
    expect(find.byType(AppBar), findsOneWidget);

    // Verify if the Container widget with gradient background is rendered
    expect(find.byType(Container), findsNWidgets(24));

    // Verify if the SingleChildScrollView widget is rendered
    expect(find.byType(SingleChildScrollView), findsOneWidget);

    // Verify if the Column widget with children is rendered
    expect(find.byType(Column), findsNWidgets(10));

    // Verify if specific widgets inside the Column are rendered
    expect(find.text('Hi, Marina'), findsOneWidget);
    expect(find.text('let\'s select your\nperfect place'), findsOneWidget);
    expect(find.byType(Row), findsNWidgets(6));
    expect(find.byType(Expanded), findsNWidgets(12));
    expect(find.byType(OfferDisplay), findsNWidgets(2));
  });
}
