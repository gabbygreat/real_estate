import 'package:real_estate/utils/packages.dart';

class CircleShape extends StatelessWidget {
  final Color? backgroundColor;
  final double? size;
  final Widget? child;
  final bool isRect;
  const CircleShape({
    super.key,
    this.backgroundColor,
    this.size,
    this.isRect = false,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100.r),
      child: AnimatedContainer(
        duration: 0.6.seconds,
        width: isRect ? null : (size ?? 45).r,
        height: (size ?? 45).r,
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: isRect ? BoxShape.rectangle : BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
