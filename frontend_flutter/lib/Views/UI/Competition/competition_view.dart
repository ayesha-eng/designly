import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/banner_screen.dart';
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
      appBar: AppBar(
        backgroundColor: PrimaryBGColor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              BannerScreen(
                coverImage: "assets/images/download.jpeg",
                title: "Competition Name",
                firstIcon: Icons.person,
                number: "33",
                secondIcon: Icons.remove_red_eye_outlined,
                numberOne: "100",
                subTitle: "username",
                location: "place",
                image: 'assets/images/writer.jpg',
                onPressed: () async {
                  Navigator.of(context).pushNamed("/project/add/preview");
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                          Navigator.of(context)
                              .pushNamed("/competition/submit");
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
      ),
    );
  }
}
