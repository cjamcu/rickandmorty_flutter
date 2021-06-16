import 'package:get/get.dart';
import 'package:ickandmorty_flutter/features/login/data/random_number_impl.dart';
import 'package:ickandmorty_flutter/features/login/domain/interfaces/random_number.dart';
import 'package:ickandmorty_flutter/features/login/domain/usecases/random_number_usecase.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut<RandomNumber>(() => RandomNumberImpl());
    Get.lazyPut<RandomNumberUseCase>(
        () => RandomNumberUseCase(randomNumber: Get.find<RandomNumber>()));
  }
}
