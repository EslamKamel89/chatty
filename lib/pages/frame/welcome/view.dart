import 'package:chatty/pages/frame/welcome/index.dart';
import 'package:chatty/utils/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  Widget _buildPageHeadTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        color: AppColors.primaryElementText,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        fontSize: 45.sp,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryElement,
      body: Center(
        // width: double.infinity,
        // height: double.infinity,
        // alignment: Alignment.center,
        child: _buildPageHeadTitle(controller.title),
      ),
    );
  }
}
