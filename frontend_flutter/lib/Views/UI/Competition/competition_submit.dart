import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/confirm_button.dart';

class CompetitionSubmit extends StatefulWidget {
  @override
  _CompetitionSubmitState createState() => _CompetitionSubmitState();
}

class _CompetitionSubmitState extends State<CompetitionSubmit> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              height: size.height * .15,
              child: Align(
                alignment: Alignment.center,
                child: Text("Competition Name", style: BodyText1),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      DottedBorder(
                        color: LabelColor,
                        borderType: BorderType.RRect,
                        dashPattern: [10, 8],
                        strokeWidth: 1,
                        child: Container(
                          height: size.height * 0.3,
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: size.height * 0.1,
                              ),
                              Icon(
                                Icons.camera_alt_outlined,
                                color: LabelColor,
                                size: 36.0,
                              ),
                              Text("Add Image or Video", style: BodyText4),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      SizedBox(
                        height: size.height * 0.3,
                      ),
                      ConfirmButton(
                        text: ("Submit to Competition"),
                        onPressed: () async {
                          Navigator.of(context).pushNamed("/dashboard/screen");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
