part of 'controller.dart';

class FavouriteView
    extends StatelessView<FavouriteScreen, FavouriteController> {
  const FavouriteView(super.state, {super.key});

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
          AppAnime.favourite,
        ),
      ),
    );
  }
}
