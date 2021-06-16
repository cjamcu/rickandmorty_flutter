
import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';
import 'package:ickandmorty_flutter/features/characters/domain/repository/characters_repository.dart';

class FindCharactersUseCase {
  final ChartersRepository chartersRepository;

  FindCharactersUseCase({required this.chartersRepository});

  Future<List<Character>> execute() async {
    return await chartersRepository.findChapters();
  }
}
