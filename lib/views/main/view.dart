part of 'controller.dart';

class MainView extends StatelessView<MainScreen, MainController> {
  const MainView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: controller.index,
      builder: (context, index, _) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: controller.screens[index],
              ),
              Align(
                alignment: const Alignment(0, 0.92),
                child: CutomNavBar(
                  currentIndex: index,
                  onChanged: (value) => controller.index.value = value,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
