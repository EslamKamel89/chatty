import 'package:chatty/pages/frame/welcome/state.dart';
import 'package:chatty/utils/helpers/print_helper.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();

  final title = 'Chatty.';
  final WelcomeState state = WelcomeState();

  @override
  void onReady() {
    const t = 'WelcomeController - onReady';
    pr('onReady', t);
    super.onReady();
  }
}
