import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'characters_controller.dart';
import 'widgets/character_item.dart';

class CharactersScreen extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff7fcda6),
          title: controller.modeSearch.value
              ? TextField(
                  onChanged: controller.onChangedSearchTextField,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                    hoverColor: Colors.white,
                    focusColor: Colors.white,
                    fillColor: Colors.white,
                    hintText: '',
                  ))
              : Text("Rickandmort"),
          actions: [
            !controller.modeSearch.value
                ? IconButton(
                    onPressed: () {
                      controller.modeSearch.toggle();
                    },
                    icon: Icon(Icons.search))
                : IconButton(
                    onPressed: () {
                      controller.modeSearch.toggle();
                      controller.closeSearch();
                    },
                    icon: Icon(Icons.close))
          ],
        ),
        body: controller.characters.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: List.generate(controller.characters.length, (index) {
                  final character = controller.characters[index];
                  return CharacterItem(
                    character: character,
                    onTap: () {
                      controller.goToDetailCharacter(character);
                    },
                  );
                }),
              ),
      ),
    );
  }
}
