import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mountain_app/constants.dart';
import 'package:mountain_app/widgets/custom_large_text.dart';
import 'package:mountain_app/widgets/custom_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Map<String, String> images = {
    "Kayaking": "kayaking.png",
    "Snorkling": "snorkling.png",
    "Balloning": "balloning.png",
    "Hiking": "hiking.png",
  };

  @override
  Widget build(BuildContext context) {
    final TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const CustomLargeText('Discover'),
              const SizedBox(
                height: 20,
              ),
              TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 10),
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  unselectedLabelColor: AppColors.textColor2.withOpacity(0.3),
                  isScrollable: true,
                  indicator: TabBarDecoration(),
                  labelStyle: const TextStyle(fontSize: 17),
                  tabs: const [
                    Tab(
                      text: 'Places',
                    ),
                    Tab(
                      text: 'Inspiration',
                    ),
                    Tab(
                      text: 'Emotions',
                    ),
                  ]),
              Container(
                height: 300,
                width: double.maxFinite,
                margin: const EdgeInsets.only(top: 10),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SizedBox(
                      height: 300,
                      width: double.maxFinite,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (_, index) {
                          return Container(
                            height: 300,
                            width: 200,
                            margin: const EdgeInsets.only(right: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/mountain.jpeg',
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          );
                        },
                      ),
                    ),
                    const Text('Hi'),
                    const Text('Hi')
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomLargeText(
                      'Explore More',
                      fontSize: 23,
                    ),
                    CustomText(
                      'See all',
                      color: AppColors.textColor2,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 120,
                width: double.maxFinite,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return Container(
                      width: 75,
                      height: 100,
                      margin: const EdgeInsets.only(right: 40),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/' +
                                            images.values.elementAt(index),
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: CustomText(
                              images.keys.elementAt(index),
                              fontSize: 17,
                              color: AppColors.textColor1,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarDecoration extends Decoration {
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return TabBarBoxPainter();
  }
}

class TabBarBoxPainter extends BoxPainter {
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Offset circleOffset = Offset(
        configuration.size!.width / 2 - 2, configuration.size!.height - 4);
    Paint paint = Paint();
    paint.color = AppColors.mainColor;
    paint.isAntiAlias = true;
    canvas.drawCircle(offset + circleOffset, 4, paint);
  }
}
