import 'package:flutter/cupertino.dart';
import 'package:ickandmorty_flutter/core/res/style.dart';

class LabelDetail extends StatelessWidget {
  final String title;
  final String value;

  const LabelDetail({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Text(
            "$title : ",
            style: AppStyle.textBold,
          ),
          Text(value),


        ]),
        SizedBox(height: 5,),
      ],
    );
  }
}
