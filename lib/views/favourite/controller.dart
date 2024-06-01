import 'package:lottie/lottie.dart';

import '../../utils/utils.dart';
part 'view.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => FavouriteController();
}

class FavouriteController extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return FavouriteView(this);
  }
}
