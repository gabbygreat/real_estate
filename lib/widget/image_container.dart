import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:real_estate/utils/utils.dart';

class ImageContainer extends StatefulWidget {
  final String image;
  const ImageContainer({
    super.key,
    required this.image,
  });

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.r),
      child: SizedBox(
        height: 200.h,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                fit: BoxFit.cover,
                widget.image,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(8.r),
                child: BlurryContainer(
                  blur: 8,
                  height: 40.r,
                  padding: EdgeInsets.only(
                    left: 10.w,
                  ),
                  width: double.maxFinite,
                  child: LayoutBuilder(
                    builder: (context, constraint) {
                      return Stack(
                        children: [
                          Align(
                            alignment: constraint.maxWidth <
                                    MediaQuery.sizeOf(context).width / 2
                                ? Alignment.centerLeft
                                : Alignment.center,
                            child: Text(
                              'Gladkova St., 25',
                              style: 14.w400.withColor(rgb(0, 0, 0)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 2.5,
                                horizontal: 0,
                              ),
                              child: CircleShape(
                                size: 40.r,
                                backgroundColor: rgb(251, 245, 235),
                                child: const Icon(
                                  Icons.chevron_right_outlined,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ).animate().slideX(
                    delay: 0.4.seconds, duration: 0.9.seconds, begin: -1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
