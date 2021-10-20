import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class ReviewCard extends StatelessWidget {
  final String coverImage;
  final Function onPressed;
  final String title;
  final String iconImage;
  final String subTitle;
  final String number;
  final String image;

  const ReviewCard(
      {Key key,
      this.coverImage,
      this.onPressed,
      this.iconImage,
      this.title,
      this.subTitle,
      this.number,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.2,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17, top: 15),
            child: Container(
              child: Column(
                children: [
                  /*   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                          radius: 20.0, backgroundImage: new AssetImage(image)),
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
                  ),*/
                  /*  SizedBox(
                    height: size.height * 0.02,
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, right: 8.0),
                        child: CircleAvatar(
                            radius: 25.0,
                            backgroundImage:
                                new AssetImage('assets/images/writer.jpg')),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            Navigator.of(context)
                                .pushNamed("/profile/designer");
                          },
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Name name name',
                                  style: BodyText1,
                                ),
                                Text(
                                  'Location Location Location',
                                  style: BodyText5,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                Text(
                                  'BEST DESIGNER eVER! BEST DESIGNER eVER!',
                                  overflow: TextOverflow.ellipsis,
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
                      Text(
                        number,
                        style: BodyText9,
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                    ],
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
