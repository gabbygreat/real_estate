part of 'controller.dart';

class FavouriteView
    extends StatelessView<FavouriteScreen, FavouriteController> {
  const FavouriteView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          AppAnime.favourite,
        ),
      ),
    );
  }
}
