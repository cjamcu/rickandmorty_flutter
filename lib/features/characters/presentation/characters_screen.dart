import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'characters_controller.dart';
import 'widgets/character_item.dart';

class CharactersScreen extends GetView<CharactersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rickandmort"),
      ),
      body: Obx(
        () => controller.characters.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView(
                children: List.generate(
                    controller.characters.length,
                    (index) => CharacterItem(
                          character: controller.characters[index],
                        )),
              ),
      ),
    );
  }
}
