import 'package:chatty/utils/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text('Chatty .',
          style: TextStyle(
            fontSize: 34.sp,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryText,
          )),
    );
  }
}
