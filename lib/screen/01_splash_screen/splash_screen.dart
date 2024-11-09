import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:expence_tracker/core/constant/app_size.dart';
import 'package:expence_tracker/core/theme/app_theme.dart';
import 'package:expence_tracker/screen/00_onBoarding_screen/onBoarding_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    _controller.forward();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.violet100,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget? child) {
              return AnimatedOpacity(
                duration: const Duration(seconds: 3),
                opacity: _animation.value,
                child: Icon(
                  Icons.account_balance_wallet,
                  size: 100.sp,
                  color: Colors.white,
                ),
              );
            },
          ),
          20.h.ph,
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                'Expence Tracker',
                textStyle: TextStyle(
                  fontFamily: "popins",
                  fontSize: 30.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                speed: const Duration(milliseconds: 120),
              ),
            ],
            onTap: () {},
          ),
        ],
      ),
    ));
  }
}
