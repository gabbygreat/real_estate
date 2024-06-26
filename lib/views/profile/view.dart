part of 'controller.dart';

class ProfileView extends StatelessView<ProfileScreen, ProfileController> {
  const ProfileView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: LottieBuilder.asset(
          AppAnime.profile,
        ),
      ),
    );
  }
}
