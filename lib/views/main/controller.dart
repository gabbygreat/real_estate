import '../../utils/utils.dart';
part 'view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainController();
}

class MainController extends State<MainScreen> {
  late List<Widget> screens;
  ValueNotifier<int> index = ValueNotifier(2);

  @override
  void initState() {
    super.initState();
    screens = [
      const MapScreen(),
      const MessageScreen(),
      const HomeScreen(),
      const FavouriteScreen(),
      const ProfileScreen(),
    ];
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      precacheImage(const AssetImage(AppImages.map), context);
    });
  }

  @override
  void dispose() {
    index.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainView(this);
  }
}
