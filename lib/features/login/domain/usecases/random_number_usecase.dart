import 'package:ickandmorty_flutter/features/login/domain/interfaces/random_number.dart';

class RandomNumberUseCase {
  final RandomNumber randomNumber;

  RandomNumberUseCase({required this.randomNumber});

  int execute() {
    return randomNumber.generate();
  }
}
