import 'package:flutter/material.dart';
import 'package:mountain_app/constants.dart';
import 'package:mountain_app/widgets/custom_button.dart';
import 'package:mountain_app/widgets/custom_large_text.dart';
import 'package:mountain_app/widgets/custom_text.dart';

class WelcomeScreen extends StatelessWidget {
  static const List<String> images = [
    ('assets/welcome-one.png'),
    ('assets/welcome-two.png'),
    ('assets/welcome-three.png')
  ];

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(images[index]), fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.only(left: 20, right: 20, top: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomLargeText(
                      'Trips',
                    ),
                    const CustomText(
                      'Mountain',
                      fontSize: 30,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 240,
                      child: CustomText(
                        'Mountain hikes give you an incredible sense of freedom along with endurance',
                        color: AppColors.textColor2,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const CustomButton(
                      width: 120,
                    ),
                  ],
                ),
                Column(
                  children: List.generate(3, (dotsIndex) {
                    return Container(
                      margin:const EdgeInsets.all(2),
                      width: 8,
                      decoration: BoxDecoration(
                        color: index == dotsIndex
                            ? AppColors.mainColor
                            : AppColors.mainColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      height: index == dotsIndex ? 20 : 12,

                    );
                  }),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
