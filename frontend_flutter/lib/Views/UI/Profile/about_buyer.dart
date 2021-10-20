import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Profile/about_card.dart';

class AboutBuyer extends StatefulWidget {
  @override
  _AboutBuyerState createState() => _AboutBuyerState();
}

class _AboutBuyerState extends State<AboutBuyer> {
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
                          label: 'Competition',
                          onPressed: () {
                            Navigator.of(context).pushNamed("/sighting/mark");
                          },
                        ),
                        AboutCard(
                          number: "999",
                          label: 'Competitors',
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed("/sighting/previous");
                          },
                        ),
                      ]),
                  SizedBox(height: size.height * .04),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: size.width*0.04,),
                        AboutCard(
                          number: "999",
                          label: 'Followers',
                          onPressed: () {
                            Navigator.of(context).pushNamed("");
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
                    Text("Location",style: BodyText1,),
                    Text("a",style: BodyText10,),
                    Text("About",style: BodyText1),
                    Text("Nothing serious",style: BodyText10),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
