import 'package:get/get.dart';
import 'package:ickandmorty_flutter/features/login/presentation/login_binding.dart';
import 'package:ickandmorty_flutter/features/login/presentation/login_screen.dart';

class Routes {
  static const loginRoute = "/login";
  static const charactersRoute = "/characters";

  static List<GetPage>? pages() {
    return [
      GetPage(
          name: loginRoute, page: () => LoginScreen(), binding: LoginBinding()),
    ];
  }
}
