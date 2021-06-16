import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ickandmorty_flutter/core/res/dimens.dart';
import 'package:ickandmorty_flutter/features/character_detail/presentation/character_detail_controller.dart';

import 'widgets/label_detail.dart';

class CharacterDetailScreen extends GetView<CharacterDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rickandmort"),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(Dimens.paddingScreen),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(tag: controller.character.id,
              child: Image.network(controller.character.image)),
              SizedBox(
                height: Dimens.separation,
              ),
              LabelDetail(
                value: controller.character.name,
                title: 'Name',
              ),
              LabelDetail(
                value: controller.character.gender,
                title: 'Gender',
              ),
              LabelDetail(
                value: controller.character.status,
                title: 'Status',
              ),
              LabelDetail(
                value: controller.character.species,
                title: 'Species',
              ),
              LabelDetail(
                value: controller.character.type,
                title: 'Type',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
