import '/utils/utils.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppConstant.appName,
          home: const MainScreen(),
          theme: ThemeData(
            fontFamily: AppConstant.fontFamily,
          ),
        );
      },
    );
  }
}
