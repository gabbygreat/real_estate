part of 'controller.dart';

class MapView extends StatelessView<MapScreen, MapController> {
  const MapView(super.state, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              AppImages.map,
            ),
          ),
        ),
        child: ValueListenableBuilder(
            valueListenable: controller.isClicked,
            builder: (context, isClicked, _) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    50.verticalSpace,
                    SearchField(
                      duration: controller.duration,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              return Stack(
                                children: [
                                  for (int i = 0; i <= 5; i++)
                                    HeatMap(
                                      constraints: constraints,
                                      isClicked: isClicked,
                                    )
                                ],
                              );
                            }),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                overlayColor: MaterialStateColor.resolveWith(
                                  (states) => Colors.transparent,
                                ),
                                onTapDown: controller.showModal,
                                child: CircleShape(
                                  backgroundColor: rgb(116, 116, 116, a: 0.7),
                                  child: const Center(
                                    child: Icon(
                                      Icons.stacked_bar_chart,
                                      color: Colors.white54,
                                    ),
                                  ),
                                )
                                    .animate()
                                    .scale(duration: controller.duration),
                              ),
                              10.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleShape(
                                    backgroundColor: rgb(116, 116, 116, a: 0.7),
                                    child: const Icon(
                                      Icons.near_me_outlined,
                                      color: Colors.white54,
                                    ),
                                  )
                                      .animate()
                                      .scale(duration: controller.duration),
                                  CircleShape(
                                    backgroundColor: rgb(116, 116, 116, a: 0.7),
                                    isRect: true,
                                    child: Row(
                                      children: [
                                        12.horizontalSpace,
                                        const Icon(
                                          Icons.sort,
                                          color: Colors.white54,
                                        ),
                                        8.horizontalSpace,
                                        const Text(
                                          'List of variations',
                                          style: TextStyle(
                                            color: Colors.white54,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        12.horizontalSpace,
                                      ],
                                    ),
                                  )
                                      .animate()
                                      .scale(duration: controller.duration),
                                ],
                              ),
                              (kBottomNavigationBarHeight * 2).verticalSpace,
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
