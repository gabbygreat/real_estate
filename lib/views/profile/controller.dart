import 'package:lottie/lottie.dart';

import '../../utils/utils.dart';
part 'view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileController();
}

class ProfileController extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return ProfileView(this);
  }
}
