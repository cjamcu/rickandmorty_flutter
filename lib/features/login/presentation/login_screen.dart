import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ickandmorty_flutter/core/res/dimens.dart';
import 'package:ickandmorty_flutter/core/res/style.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Dimens.paddingScreen),
        child: Obx(
          () => Column(
            children: [

              Image.asset("assets/verify.png"),
              Text("Code Verification", style: AppStyle.titleBold),
              controller.randomCode == 0
                  ? CircularProgressIndicator()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Enter the code ",
                          style: AppStyle.textGrey,
                        ),
                        Text(
                          "${controller.randomCode}",
                          style: AppStyle.textBold,
                        ),
                      ],
                    ),
              SizedBox(
                height: Dimens.separation,
              ),
              PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                animationDuration: Duration(milliseconds: 300),
                onChanged: (value) {
                  controller.inputCode = value;
                },
                appContext: context,
              ),
              SizedBox(
                height: Dimens.mediaSeparation,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff7fcda6)
                ) ,
                  onPressed: () {
                    controller.validateCode(controller.inputCode);
                  },
                  child: Text("VERIFY"))
            ],
          ),
        ),
      ),
    );
  }
}
