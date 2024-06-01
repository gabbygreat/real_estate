part of 'controller.dart';

class MessageView extends StatelessView<MessageScreen, MessageController> {
  const MessageView(super.state, {super.key});

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
          AppAnime.message,
        ),
      ),
    );
  }
}
