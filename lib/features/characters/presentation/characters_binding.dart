import 'package:get/get.dart';
import 'package:ickandmorty_flutter/features/characters/data/datasource/find_charters_datasource.dart';
import 'package:ickandmorty_flutter/features/characters/data/repository/characters_repository_impl.dart';
import 'package:ickandmorty_flutter/features/characters/domain/repository/characters_repository.dart';
import 'package:ickandmorty_flutter/features/characters/domain/usecase/find_characters.dart';

import 'characters_controller.dart';

class CharactersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindChartersDataSource>(() => FindChartersDataSourceImpl());
    Get.lazyPut<ChartersRepository>(() => ChartersRepositoryImpl(
        findChartersDataSource: Get.find<FindChartersDataSource>()));
    Get.lazyPut(() => FindCharactersUseCase(
        chartersRepository: Get.find<ChartersRepository>()));
    Get.lazyPut(() => CharactersController());
  }
}
