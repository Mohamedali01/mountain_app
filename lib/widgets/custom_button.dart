import 'package:flutter/material.dart';
import 'package:mountain_app/constants.dart';
import 'package:mountain_app/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final double? width;
  final String text;
  final bool? isLarge;

  const CustomButton(
      {Key? key, this.width, this.isLarge = false, this.text = ''})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.mainColor, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLarge!)
            CustomText(
              text,
              color: Colors.white,
            ),
          Image.asset('assets/button-one.png'),
        ],
      ),
    );
  }
}
