import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

import 'dashboard_card.dart';

class TimelineScreen extends StatefulWidget {
  @override
  _TimelineScreenState createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20.0),
            child: Text(
              "Most Trending",
              style: BodyText8,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.01,
          width: size.width * 0.1,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    children: [
                      DashBoardCard(
                        onPressed: () {
                          Navigator.of(context).pushNamed("");
                        },
                        coverImage: "assets/images/cover.jpg",
                        title: "Project Name Project Name",
                        subTitle: "Designer Name Designer Name",
                        iconImage: 'assets/images/Eye _1.png',
                        image: 'assets/images/writer.jpg',
                        number: "999",
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
