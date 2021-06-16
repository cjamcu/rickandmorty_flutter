import 'package:get/get.dart';

import '../../character_detail/presentation/character_detail_controller.dart';

class CharacterDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CharacterDetailController());
  }
}
