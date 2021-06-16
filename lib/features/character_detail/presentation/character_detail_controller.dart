import 'package:get/get.dart';
import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';

class CharacterDetailController extends GetxController {
  Rx<Character> _character =
      Character(id: 00, name: '', image: '', species: '', status: '', type: '', gender: '')
          .obs;

  Character get character => _character.value;

  @override
  void onInit() {
    final paramCharter = Get.arguments['character'] as Character;

    _character(paramCharter);

    super.onInit();
  }
}
