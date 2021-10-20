import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class ConfirmButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final ButtonStyle style;

  static ButtonStyle primaryStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(16),
    minimumSize: Size(double.infinity, 56),
    onPrimary: SecondaryBGColor,
    primary: LabelColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );

  static ButtonStyle backStyle = ElevatedButton.styleFrom(
    padding: EdgeInsets.all(16),
    minimumSize: Size(double.infinity, 56),
    onPrimary: Colors.black,
    primary: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
  const ConfirmButton(
      {@required this.text, @required this.onPressed, this.style});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style ?? primaryStyle,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: SecondaryColor,
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
