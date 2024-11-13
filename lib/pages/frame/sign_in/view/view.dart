import 'package:chatty/pages/frame/sign_in/index.dart';
import 'package:chatty/pages/frame/sign_in/view/widgets/logo_widget.dart';
import 'package:chatty/pages/frame/sign_in/view/widgets/social_login_button.dart';
import 'package:chatty/utils/values/colors.dart';
import 'package:chatty/utils/widgets/vertical_margin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(width: double.infinity),
          const LogoWidget(),
          const SocialLoginButton(
            imagePath: 'assets/icons/google.png',
            content: 'Sign in with Google',
          ),
          const SocialLoginButton(
            imagePath: 'assets/icons/facebook.png',
            content: 'Sign in with Facebook',
          ),
          const SocialLoginButton(
            imagePath: 'assets/icons/apple.png',
            content: 'Sign in with Apple',
          ),
        ].map((widget) => VerticalMargin(margin: 10.h, child: widget)).toList(),
      ),
    );
  }
}
