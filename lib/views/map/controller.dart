import '../../utils/utils.dart';
import 'widget.dart';
part 'view.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => MapController();
}

class MapController extends State<MapScreen> {
  ValueNotifier<bool> isClicked = ValueNotifier(false);

  Duration duration = 0.5.seconds;

  @override
  void dispose() {
    isClicked.dispose();
    super.dispose();
  }

  void showModal(TapDownDetails details) async {
    isClicked.value = !isClicked.value;
    await showDialog(
      barrierColor: Colors.transparent,
      context: context,
      builder: (context) {
        return Align(
          alignment: const Alignment(-0.8, 0.55),
          child: Material(
            color: rgb(251, 245, 235),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 10.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ModalText(
                    text: 'Cosy areas',
                    icon: Icon(
                      Icons.verified_user_outlined,
                      color: rgb(140, 137, 132),
                    ),
                  ),
                  ModalText(
                    text: 'Price',
                    selected: true,
                    icon: Icon(
                      Icons.wallet,
                      color: rgb(251, 171, 64),
                    ),
                  ),
                  ModalText(
                    text: 'Infrastructure',
                    icon: Icon(
                      Icons.shopping_basket_outlined,
                      color: rgb(140, 137, 132),
                    ),
                  ),
                  ModalText(
                    text: 'Without any layer',
                    icon: Icon(
                      Icons.stacked_bar_chart_rounded,
                      color: rgb(140, 137, 132),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ).animate().scale();
      },
    );
    isClicked.value = !isClicked.value;
  }

  @override
  Widget build(BuildContext context) {
    return MapView(this);
  }
}
