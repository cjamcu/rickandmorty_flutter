import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';


abstract class ChartersRepository {
  Future<List<Character>> findChapters();
}