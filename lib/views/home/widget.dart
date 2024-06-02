import 'dart:math';

import 'package:real_estate/utils/utils.dart';

class OfferDisplay extends StatefulWidget {
  final double height;
  final DisplayType displayType;
  const OfferDisplay({
    super.key,
    required this.height,
    required this.displayType,
  });

  @override
  State<OfferDisplay> createState() => _OfferDisplayState();
}

class _OfferDisplayState extends State<OfferDisplay>
    with SingleTickerProviderStateMixin {
  late int number;
  late AnimationController _animationController;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();
    number = generateNumber();
    _animationController = AnimationController(
      vsync: this,
      duration: 1.5.seconds,
      reverseDuration: 1.5.seconds,
    )..addListener(() {
        setState(() {});
      });
    _animation = IntTween(begin: 1, end: number).animate(_animationController);
    _animationController.forward();
  }

  int generateNumber() {
    Random random = Random();
    int min = 1200;
    int max = 2500;
    int randomNumber = min + random.nextInt(max - min + 1);
    return randomNumber;
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        shape: switch (widget.displayType) {
          DisplayType.buy => BoxShape.circle,
          DisplayType.rent => BoxShape.rectangle,
        },
        borderRadius: switch (widget.displayType) {
          DisplayType.buy => null,
          DisplayType.rent => BorderRadius.circular(20.r),
        },
        color: switch (widget.displayType) {
          DisplayType.buy => rgb(252, 157, 17),
          DisplayType.rent => rgb(253, 247, 240),
        },
      ),
      child: Column(
        children: [
          20.verticalSpace,
          Expanded(
            flex: 1,
            child: Text(
              widget.displayType.name.capitalize,
              style: 15.w500.withColor(
                    switch (widget.displayType) {
                      DisplayType.buy => rgb(251, 245, 235),
                      DisplayType.rent => rgb(164, 149, 126),
                    },
                  ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Builder(
                  builder: (context) {
                    var number_ = _animation.value;
                    return Text(
                      '$number_'.formatNumberWithSpaces,
                      style: 28.w700.withColor(
                            switch (widget.displayType) {
                              DisplayType.buy => rgb(251, 245, 235),
                              DisplayType.rent => rgb(164, 149, 126),
                            },
                          ),
                    );
                  },
                ),
                Text(
                  'offers',
                  style: 12.w500.withColor(
                        switch (widget.displayType) {
                          DisplayType.buy => rgb(251, 245, 235),
                          DisplayType.rent => rgb(164, 149, 126),
                        },
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().scale(duration: 0.5.seconds);
  }
}
