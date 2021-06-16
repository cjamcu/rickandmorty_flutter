import 'dart:math';

import 'package:ickandmorty_flutter/features/login/domain/interfaces/random_number.dart';

class RandomNumberImpl extends RandomNumber {
  @override
  int generate() {
    String number = "";
    var rnd = new Random();
    for (var i = 0; i < 4; i++) {
      number = number + rnd.nextInt(9).toString();
    }

    return int.parse(number);
  }
}
