import 'package:ickandmorty_flutter/features/characters/data/datasource/find_charters_datasource.dart';
import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';
import 'package:ickandmorty_flutter/features/characters/domain/repository/characters_repository.dart';

class ChartersRepositoryImpl extends ChartersRepository {
  final FindChartersDataSource findChartersDataSource;

  ChartersRepositoryImpl({required this.findChartersDataSource});

  @override
  Future<List<Character>> findChapters() async {
    final chartersResponse = await findChartersDataSource.find();
    List<Character> charters = <Character>[];
    chartersResponse.forEach((element) {
      charters.add(Character(
          image: element.image!,
          name: element.name!,
          id: element.id!,
          species: element.species!,
          status: element.status!, type: element.type!));
    });

    return charters;
  }
}
