import 'package:get/get.dart';
import 'package:ickandmorty_flutter/core/res/routes.dart';
import 'package:ickandmorty_flutter/features/login/domain/usecases/random_number_usecase.dart';

class LoginController extends GetxController {
  Rx<int> _randomCode = 0.obs;
  Rx<String> _inputCode = "".obs;

  set randomCode(int code) => _randomCode.value = code;

  int get randomCode => _randomCode.value;

  String get inputCode => _inputCode.value;

  set inputCode(String code) => _inputCode.value = code;

  RandomNumberUseCase randomNumberUseCase = Get.find();

  @override
  void onReady() {
    findRandomNumber();
  }

  void findRandomNumber() {
    final code = randomNumberUseCase.execute();

    this.randomCode = code;
  }

  validateCode(String code) {
    if (code == randomCode.toString()) {
      goToHomePage();
    } else {
      Get.snackbar(
        "Attention",
        "Wrong Code",
      );
    }
  }

  void goToHomePage() {
    Get.offNamed(Routes.charactersRoute);
  }
}
