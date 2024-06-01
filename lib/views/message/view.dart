part of 'controller.dart';

class MessageView extends StatelessView<MessageScreen, MessageController> {
  const MessageView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          AppAnime.message,
        ),
      ),
    );
  }
}
