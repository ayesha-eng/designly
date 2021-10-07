import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    Key key,
    this.icon,
    this.inputAction = TextInputAction.next,
    this.obText = false,
    this.onSaved,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.inputType,
  }) : super(key: key);
  final IconData icon;

  final bool obText;
  final TextInputAction inputAction;
  final Function onSaved;
  final Function validator;
  final keyboardType;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: SecondaryBGColor)),
        border:   OutlineInputBorder(borderSide: BorderSide(color: SecondaryBGColor)) ,
        suffixIcon: Icon(
          icon,
          color: Colors.cyan, //Colors.grey[900],
        ),
      ),
      validator: validator,
      keyboardType: inputType,
      obscureText: obText,
      textInputAction: inputAction,
      onSaved: onSaved,
    );
  }
}
