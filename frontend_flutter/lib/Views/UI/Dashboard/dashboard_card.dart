import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class DashBoardCard extends StatelessWidget {
  final String coverImage;
  final Function onPressed;
  final String title;
  final String iconImage;
  final String subTitle;
  final String number;
  final String image;

  const DashBoardCard(
      {Key key,
      this.coverImage,
      this.onPressed,
      this.iconImage,
      this.title,
      this.subTitle, this.number, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      elevation: 10,
      shadowColor: SecondaryBGColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                coverImage,
                width: size.width,
                height: size.height * 0.3,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 17, top: 15),
            child: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      style: BodyText9,
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              new AssetImage(image)),
                      SizedBox(width: size.width * 0.01),
                      Expanded(
                        child: Container(
                          child: Text(
                            subTitle,
                            style: BodyText5,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.1,
                      ),
                      Image.asset(
                        iconImage,
                        height: size.height * 0.05,
                        width: size.width * 0.07,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        number,
                        style: BodyText9,
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
