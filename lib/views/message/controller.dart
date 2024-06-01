import 'package:lottie/lottie.dart';

import '../../utils/utils.dart';
part 'view.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => MessageController();
}

class MessageController extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return MessageView(this);
  }
}
