import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class AboutCard extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final String label;
  final String number;

  const AboutCard({Key key, this.icon, this.onPressed, this.label, this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey[100],
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number, style: BodyText1,),
                Text(label, style: BodyText10,    overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        ),
        SizedBox(height: size.height * .01),
      ]),
    );
  }
}
