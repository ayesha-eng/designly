import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Dashboard/timeline_screen.dart';

import 'competition.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryBGColor,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.1,
            width: size.width * 0.9,
          ),
          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 6.0,right: 8.0),
                  child: CircleAvatar(
                      radius: 45.0,
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
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.1,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 15.0),
                      primary: LabelColor,

                      // background
                      onPrimary: SecondaryColor,

                      // foreground
                    ),
                    onPressed: () async {
                      Navigator.of(context).pushNamed(
                        "/profile/buyer",
                      );
                    },
                    child: Text(
                      'Switch to Buyer',
                      style: TextStyle(fontSize: 15),
                    )),
                SizedBox(
                  width: size.width * 0.02,
                ),
              ],
            ),
          ),

          Column(
            children: [
              DefaultTabController(length: 2,
                child:
              Column(
                children: [
                  Container(

                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorColor:LabelColor,
                      labelColor: LabelColor,
                      unselectedLabelColor:SecondaryBGColor,
                      labelStyle: BodyText6,

                      unselectedLabelStyle: BodyText7,
                      tabs:[
                        Tab(text: "Timeline"),
                        Tab(text: "Competition"),
                      ],
                    ),
                  ),
                  Container(

                    height:
                    size.height * .65,
                    width:
                    size.width,
                    child: TabBarView(
                      children: [
                        TimelineScreen(),
                        Competition(),

                      ],
                    ),
                  )

                ],

              ),


              ),
            ],

          ),

        ],
      ),
    );
  }
}
