import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

import 'dashboard_card.dart';

class Competition extends StatefulWidget {
  @override
  _CompetitionState createState() => _CompetitionState();
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class _CompetitionState extends State<Competition> {
  int _value = 1;
  List<ListItem> _dropdownItems = [
    ListItem(1, "Beginner"),
    ListItem(2, "Mid Level"),
    ListItem(3, "Top Level"),
    // ListItem(4, "Fourth Item")
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 35.0, top: 20.0),

          child: Container(
            color: LabelColor,
            height: size.height * 0.05,
            width: size.width * 0.27,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                icon: Icon(
                  Icons.arrow_drop_down_outlined,
                  color: SecondaryColor,
                ),
                hint: Text("Select item"),
                style: BodyText3,
                value: _value,
                items: _dropdownItems.map((ListItem item) {
                  return DropdownMenuItem<int>(
                    child: Text(
                      item.name,
                    ),
                    value: item.value,
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _value = value;
                  });
                },
              ),
            ),
          ),
          /*Text(
            "Most Trending",
            style: BodyText8,
          ),*/
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
                        coverImage: "assets/images/cover.jpg",
                        title: "Competition name",
                        subTitle: "End Date:11-12-2021",
                        iconImage: 'assets/images/Eye _1.png',
                        image: 'assets/images/Eye _1.png',
                        number: "99",
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
