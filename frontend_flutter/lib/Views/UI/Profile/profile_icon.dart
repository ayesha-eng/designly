import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class ProfileIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.favorite,
          color: LabelColor,
          size: 24.0,
        ),
        Text(
          "999",
          style: BodyText4,
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        Icon(
          Icons.remove_red_eye_outlined,
          color: LabelColor,
          size: 24.0,
        ),
        Text(
          "999",
          style: BodyText4,
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        Icon(
          Icons.favorite,
          color: LabelColor,
          size: 24.0,
        ),
        Text(
          "999",
          style: BodyText4,
        ),
      ],
    );
  }
}
