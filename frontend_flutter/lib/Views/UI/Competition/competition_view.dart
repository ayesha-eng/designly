import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/confirm_button.dart';
import 'package:frontend_flutter/Views/Utils/custom_button.dart';

class CompetitionView extends StatefulWidget {
  @override
  _CompetitionViewState createState() => _CompetitionViewState();
}

class _CompetitionViewState extends State<CompetitionView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.1,
            ),
            Container(
              height: size.height * 0.45,
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2.0,
                  color: PrimaryBGColor,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/download.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Competition Name",
                              style: BodyText1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: size.width * 0.3),
                      CustomButton(
                        text: ("join"),
                        onPressed: () {
                          Navigator.of(context).pushNamed("");
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: LabelColor,
                        size: 24.0,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Text("30"),
                      SizedBox(width: size.width * 0.07),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: LabelColor,
                        size: 24.0,
                      ),
                      SizedBox(width: size.width * 0.01),
                      Text("60"),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                          radius: 30.0,
                          backgroundImage:
                              new AssetImage('assets/images/writer.jpg')),
                      SizedBox(width: size.width * 0.02),
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
                                  'UserName',
                                  style: BodyText1,
                                ),
                                Text(
                                  'Location',
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
                        onPressed: () {
                          Navigator.of(context).pushNamed("");
                        },
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.03),
                  Text(
                    "description",
                    style: BodyText1,
                  ),
                  SizedBox(height: size.height * 0.03),
                  Text(
                    "start date",
                    style: BodyText1,
                  ),
                  SizedBox(height: size.height * 0.03),
                  Text("end date", style: BodyText1),
                  SizedBox(height: size.height * 0.03),
                  Text("level", style: BodyText1),
                  SizedBox(height: size.height * 0.03),
                  Text(
                    "prize",
                    style: BodyText1,
                  ),
                  SizedBox(height: size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: ConfirmButton(
                      text: 'Join Competition',
                      onPressed: () async {
                        Navigator.of(context).pushNamed("/dashboard/screen");
                      },
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
