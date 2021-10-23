import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'custom_button.dart';

class BannerScreen extends StatelessWidget {
  final String coverImage;
  final Function onPressed;
  final String title;
  final IconData firstIcon;
  final IconData secondIcon;
  final String subTitle;
  final String number;
  final String numberOne;
  final String image;
  final String location;

  const BannerScreen(
      {Key key,
      this.coverImage,
      this.onPressed,
      this.title,
      this.subTitle,
      this.number,
      this.image,
      this.firstIcon,
      this.location,
      this.secondIcon,
      this.numberOne})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          coverImage,
          width: size.width,
          height: size.height * 0.35,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: title,
                      style: BodyText1,
                    ),
                  ],
                ),
              ),
              SizedBox(width: size.width * 0.3),
              Row(
                children: [
                  Icon(
                    firstIcon,
                    color: LabelColor,
                    size: 24.0,
                  ),
                  SizedBox(width: size.width * 0.01),
                  Text(number),
                  SizedBox(width: size.width * 0.07),
                  Icon(
                    secondIcon,
                    color: LabelColor,
                    size: 24.0,
                  ),
                  SizedBox(width: size.width * 0.01),
                  Text(numberOne),
                ],
              ),
              SizedBox(height: size.height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CircleAvatar(
                      radius: 20.0, backgroundImage: new AssetImage(image)),
                  SizedBox(width: size.width * 0.02),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        Navigator.of(context).pushNamed("/profile/designer");
                      },
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              subTitle,
                              style: BodyText1,
                            ),
                            Text(
                              location,
                              style: BodyText5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.1,
                  ),
                  CustomButton(
                    text: ("Follow"),
                    onPressed: onPressed,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
