import 'package:expence_tracker/core/constant/app_size.dart';
import 'package:expence_tracker/core/theme/app_theme.dart';
import 'package:expence_tracker/core/widgets/app_text.dart';
import 'package:expence_tracker/core/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/1.svg"),
            const AppText(
              text: "Gain total control of your money",
              fontSize: 30,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.center,
            ),
            10.h.ph,
            const AppText(
              text: "Become your own money manager and make every cent count",
              fontSize: 18,
              color: Colors.grey,
              textAlign: TextAlign.center,
            ),
            30.h.ph,
            CommonButton(
              onPressed: () {},
              text: "Sign Up",
              fontsize: 18,
            ),
            10.h.ph,
            CommonButton(
              onPressed: () {},
              text: "Login",
              fontsize: 18,
              color: AppColor.violet20,
              fontcolor: AppColor.violet100,
            )
          ],
        ),
      ),
    );
  }
}
