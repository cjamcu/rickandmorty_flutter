import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/res/routes.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.loginRoute,
      getPages: Routes.pages()));
}
