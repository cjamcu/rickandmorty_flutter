import 'package:get/get.dart';
import 'package:ickandmorty_flutter/core/res/routes.dart';
import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';
import 'package:ickandmorty_flutter/features/characters/domain/usecase/find_characters.dart';

class CharactersController extends GetxController {
  RxList<Character> characters = <Character>[].obs;
  List<Character> charactersFull = [];
  Rx<bool> modeSearch = false.obs;

  FindCharactersUseCase findCharactersUseCase = Get.find();

  @override
  void onReady() {
    findCharacters();
  }

  void findCharacters() async {
    final listCharacter = await findCharactersUseCase.execute();
    characters.assignAll(listCharacter);
    charactersFull.assignAll(listCharacter);
  }

  void goToDetailCharacter(Character character) {
    Get.toNamed(Routes.characterDetailRoute,
        arguments: {'character': character});
  }

  void onChangedSearchTextField(String value) {
    if (value == "") {
      this.characters.assignAll(charactersFull);
    }
    final chartersFiltered =
        charactersFull.where((element) => element.name.contains(value));
    this.characters.assignAll(chartersFiltered.toList());
  }

  void closeSearch() {
    this.characters.assignAll(charactersFull);
  }
}
