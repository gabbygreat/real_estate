part of 'controller.dart';

class HomeView extends StatelessView<HomeScreen, HomeController> {
  const HomeView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              rgb(248, 248, 248),
              rgb(248, 243, 237),
              rgb(249, 235, 222),
              rgb(249, 232, 213),
              rgb(249, 222, 190),
              rgb(249, 215, 174),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 45.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            color: rgb(255, 255, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                          ),
                          padding: EdgeInsets.all(8.r),
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: rgb(164, 149, 126),
                                  size: 15.sp,
                                ),
                                4.horizontalSpace,
                                Text(
                                  'Saint Petersburg',
                                  style: 12.w500.withColor(rgb(164, 149, 126)),
                                )
                              ],
                            ),
                          ),
                        ).animate().slideX(begin: -1),
                        CircleShape(
                          backgroundColor: rgb(228, 148, 51),
                          child: Image.asset(
                            AppImages.head,
                            fit: BoxFit.scaleDown,
                          ),
                        ).animate().scale()
                      ],
                    ),
                    20.verticalSpace,
                    Text(
                      'Hi, Marina',
                      style: 20.w500.withColor(rgb(164, 149, 126)),
                    ),
                    Text(
                      'let\'s select your\nperfect place',
                      style: 24.w500.withColor(rgb(35, 34, 32)),
                    ).animate().slideY(begin: 0.5),
                    35.verticalSpace,
                    Row(
                      children: [
                        Expanded(
                          child: LayoutBuilder(builder: (context, constraints) {
                            return OfferDisplay(
                              displayType: DisplayType.buy,
                              height: constraints.maxWidth,
                            );
                          }),
                        ),
                        10.horizontalSpace,
                        Expanded(
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return OfferDisplay(
                                displayType: DisplayType.rent,
                                height: constraints.maxWidth,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                padding: EdgeInsets.all(8.r),
                decoration: ShapeDecoration(
                  color: rgb(255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.w + 8.r),
                  ),
                ),
                child: Column(
                  children: [
                    for (int i = 0; i <= 2; i++)
                      Column(
                        children: [
                          const ImageContainer(
                            image: AppImages.kitchen,
                          ),
                          8.verticalSpace,
                          Row(
                            children: [
                              const Expanded(
                                child: ImageContainer(
                                  image: AppImages.kitchen,
                                ),
                              ),
                              8.horizontalSpace,
                              const Expanded(
                                child: ImageContainer(
                                  image: AppImages.kitchen,
                                ),
                              ),
                            ],
                          ),
                          8.verticalSpace,
                        ],
                      ),
                  ],
                ),
              ).animate().moveY(begin: 400, duration: 0.6.seconds),
            ],
          ),
        ),
      ),
    );
  }
}
