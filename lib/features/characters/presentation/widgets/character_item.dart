import 'package:flutter/material.dart';
import 'package:ickandmorty_flutter/features/characters/domain/models/character.dart';


class CharacterItem extends StatelessWidget {
  final Character character;

  const CharacterItem({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(character.name),
      subtitle: Text(character.status),
      leading: Image.network(character.image),
      onTap: (){

      },
    );
  }
}
