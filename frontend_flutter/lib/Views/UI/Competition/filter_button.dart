import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function onPressed;

  const FilterButton({Key key, this.title, this.isSelected, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: RaisedButton(
        onPressed: () {},
        elevation: 0.5,
        color: isSelected ? LabelColor : PrimaryBGColor,
        //borderSide: BorderSide(color: Colors.green),
        child: Text(title,
            style: TextStyle(
              color: isSelected ? SecondaryBGColor : LabelColor,
            )),
      ),
    );
  }
}
