import 'dart:math';

import 'package:real_estate/utils/utils.dart';

class SearchField extends StatelessWidget {
  final Duration duration;
  const SearchField({
    super.key,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 12.h,
            ),
            decoration: ShapeDecoration(
              color: rgb(255, 255, 255),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                ),
                10.horizontalSpace,
                const Text('Saint Petersburg')
              ],
            ),
          ).animate().scale(duration: duration),
        ),
        8.horizontalSpace,
        CircleShape(
          backgroundColor: rgb(255, 255, 255),
          child: Icon(
            Icons.tune,
            size: 18.sp,
          ),
        ).animate().scale(duration: duration),
      ],
    );
  }
}

class HeatMap extends StatefulWidget {
  final BoxConstraints constraints;
  final bool isClicked;
  const HeatMap({
    super.key,
    required this.constraints,
    required this.isClicked,
  });

  @override
  State<HeatMap> createState() => _HeatMapState();
}

class _HeatMapState extends State<HeatMap> {
  late Offset position;
  late String number;

  @override
  void initState() {
    super.initState();
    position = getPosition();
  }

  Offset getPosition() {
    final Random random = Random();

    double randomNumber = 10 + random.nextDouble() * 90;
    number = randomNumber.toStringAsFixed(2).replaceAll('.', ',');
    final double maxLeft = widget.constraints.maxWidth - 40;
    final double maxTop = widget.constraints.maxHeight - 40;

    var left = random.nextDouble() * maxLeft;
    var top = random.nextDouble() * maxTop;

    return Offset(left, top);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: position.dx,
      top: position.dy,
      child: AnimatedContainer(
        duration: 0.7.seconds,
        width: widget.isClicked ? 90.w : 45.w,
        height: 45.w,
        padding: EdgeInsets.all(10.r),
        decoration: ShapeDecoration(
          color: rgb(252, 157, 17),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.r),
              topRight: Radius.circular(12.r),
              bottomRight: Radius.circular(12.r),
            ),
          ),
        ),
        child: widget.isClicked
            ? FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  '$number mn ₽',
                  style: TextStyle(
                    color: rgb(255, 255, 255),
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            : const Icon(
                Icons.apartment,
                color: Colors.white,
              ),
      ).animate().scale(delay: 0.4.seconds, duration: 0.5.seconds),
    );
  }
}

class ModalText extends StatelessWidget {
  final String text;
  final bool selected;
  final Widget icon;
  const ModalText({
    super.key,
    required this.text,
    this.selected = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          8.horizontalSpace,
          Text(
            text,
            style: TextStyle(
              fontSize: 15.sp,
              color: selected ? rgb(251, 171, 64) : rgb(140, 137, 132),
            ),
          ),
        ],
      ),
    );
  }
}
