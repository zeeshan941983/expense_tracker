import 'package:expence_tracker/core/theme/app_theme.dart';
import 'package:expence_tracker/core/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final double? fontsize;
  final Color? color;
  final Color? fontcolor;
  const CommonButton(
      {super.key,
      this.onPressed,
      required this.text,
      this.fontsize,
      this.color,
      this.fontcolor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: color ?? AppColor.violet100,
          borderRadius: BorderRadius.circular(20.sp),
        ),
        child: AppText(
          text: text,
          color: fontcolor ?? Colors.white,
          textAlign: TextAlign.center,
          fontSize: fontsize ?? 20,
        ),
      ),
    );
  }
}
