import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Profile/about_card.dart';

class AboutDesigner extends StatefulWidget {
  @override
  _AboutDesignerState createState() => _AboutDesignerState();
}

class _AboutDesignerState extends State<AboutDesigner> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
          width:size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.transparent,
                ),
                child: Column(children: [
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AboutCard(
                          number: "999",
                          label: 'Views',
                          onPressed: () {
                            Navigator.of(context).pushNamed("/sighting/mark");
                          },
                        ),
                        AboutCard(
                          number: "999",
                          label: 'Likes',
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed("/sighting/previous");
                          },
                        ),
                      ]),
                  SizedBox(height: size.height * .04),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AboutCard(
                          number: "999",
                          label: 'Followers',
                          onPressed: () {
                            Navigator.of(context).pushNamed("/uploaddata");
                          },
                        ),
                        AboutCard(
                          number: "999",
                          label: ' Rating',
                          onPressed: () {
                            Navigator.of(context).pushNamed("/settings");
                          },
                        ),
                      ]),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location",style: BodyText11,),
                    Text("a",style: BodyText12,),
                    Text("Specialization",style: BodyText11),
                    Text("c",style: BodyText12),
                    Text("Socials",style: BodyText11),
                    Text("Behance Link",style: BodyText12),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
