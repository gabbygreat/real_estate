import 'package:real_estate/utils/utils.dart';

class CutomNavBar extends StatefulWidget {
  final void Function(int) onChanged;
  final int currentIndex;
  const CutomNavBar({
    super.key,
    required this.currentIndex,
    required this.onChanged,
  });

  @override
  State<CutomNavBar> createState() => _CutomNavBarState();
}

class _CutomNavBarState extends State<CutomNavBar> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: ShapeDecoration(
        color: rgb(43, 43, 43),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.r),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomIcon(
            index: 0,
            currentIndex: currentIndex,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onChanged(index);
            },
          ),
          8.horizontalSpace,
          BottomIcon(
            index: 1,
            currentIndex: currentIndex,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onChanged(index);
            },
          ),
          8.horizontalSpace,
          BottomIcon(
            index: 2,
            currentIndex: currentIndex,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onChanged(index);
            },
          ),
          8.horizontalSpace,
          BottomIcon(
            index: 3,
            currentIndex: currentIndex,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onChanged(index);
            },
          ),
          8.horizontalSpace,
          BottomIcon(
            index: 4,
            currentIndex: currentIndex,
            onChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onChanged(index);
            },
          ),
        ],
      ),
    ).animate().moveY(
          begin: 100,
          delay: 0.5.seconds,
          duration: 0.7.seconds,
        );
  }
}

class BottomIcon extends StatefulWidget {
  final int index;
  final int currentIndex;
  final void Function(int) onChanged;
  const BottomIcon({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.onChanged,
  });

  @override
  State<BottomIcon> createState() => _BottomIconState();
}

class _BottomIconState extends State<BottomIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        widget.onChanged(widget.index);
        _animationController.reverse();
        await Future.delayed(0.15.seconds);
        _animationController.forward();
      },
      child: Stack(
        children: [
          Animate(
            controller: _animationController,
            effects: const [
              ScaleEffect(),
            ],
            child: CircleShape(
              backgroundColor: widget.currentIndex == widget.index
                  ? rgb(252, 157, 17)
                  : rgb(35, 34, 32),
              child: Icon(
                switch (widget.index) {
                  0 => Icons.search,
                  1 => Icons.chat,
                  2 => Icons.home_filled,
                  3 => Icons.favorite,
                  _ => Icons.person,
                },
                color: Colors.white,
              ),
            ),
          ),
          Animate(
            effects: const [
              FadeEffect(
                end: 0,
                begin: 1,
              ),
              ScaleEffect(
                begin: Offset(0, 0),
                end: Offset(1.5, 1.5),
              ),
            ],
            controller: _animationController,
            child: Positioned.fill(
              child: CustomPaint(
                painter: RingPainter(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
