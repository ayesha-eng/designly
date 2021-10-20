import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final ButtonStyle style;


  const CustomButton({@required this.text, @required this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
   return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
              vertical: 5.0, horizontal: 23.0),
          primary: LabelColor,

          // background
          onPrimary: SecondaryColor,

          // foreground
        ),
        onPressed:onPressed,
        child: Text(
         text,
          style: TextStyle(fontSize: 15),
        )
    );
  }
}
