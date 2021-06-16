import 'package:get/get.dart';
import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';
import 'package:ickandmorty_flutter/features/characters/domain/usecase/find_characters.dart';

class CharactersController extends GetxController {
  RxList<Character> characters = <Character>[].obs;

  FindCharactersUseCase findCharactersUseCase = Get.find();

  @override
  void onReady() {
    findCharacters();
  }

  void findCharacters() async {
    final listCharacter = await findCharactersUseCase.execute();
    characters.addAll(listCharacter);
  }
}
