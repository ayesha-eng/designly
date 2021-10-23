import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Dashboard/competition.dart';
import 'package:frontend_flutter/Views/UI/Profile/about_buyer.dart';
import 'package:frontend_flutter/Views/UI/Profile/profile_background.dart';
import 'package:frontend_flutter/Views/UI/Profile/profile_icon.dart';
import 'package:frontend_flutter/Views/Utils/custom_button.dart';

class BuyerProfile extends StatefulWidget {
  @override
  _BuyerProfileState createState() => _BuyerProfileState();
}

class _BuyerProfileState extends State<BuyerProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ProfileBackground(
      label: "Buyer Name",
      onTap: () async {
        Navigator.of(context).pushNamed("/buyer/profile/edit");
      },
      child: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: size.height * 0.20,
                  width: size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/download.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 90,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 45.0,
                      backgroundImage: new AssetImage(
                        "assets/images/writer.jpg",
                      ),
                    ),
                    Container(
                      height: size.height,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: size.height * 0.02),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          ProfileIcon(),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomButton(
                                text: 'Follow',
                                onPressed: () async {
                                  Navigator.of(context)
                                      .pushNamed("/dashboard/screen");
                                },
                              ),
                              SizedBox(width: size.width * 0.03),
                              CustomButton(
                                text: 'Chat',
                                onPressed: () async {
                                  Navigator.of(context)
                                      .pushNamed("/dashboard/screen");
                                },
                              ),
                            ],
                          ),
                          Container(
                            height: size.height * .73,
                            child: DefaultTabController(
                              length: 2,
                              child: Column(
                                children: [
                                  Container(
                                    child: TabBar(
                                      indicatorSize: TabBarIndicatorSize.label,
                                      indicatorColor: LabelColor,
                                      labelColor: LabelColor,
                                      unselectedLabelColor: SecondaryBGColor,
                                      labelStyle: BodyText6,
                                      unselectedLabelStyle: BodyText7,
                                      tabs: [
                                        Tab(text: "Competition"),
                                        Tab(text: "About"),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Container(
                                      height: size.height * 0.65,
                                      width: size.width,
                                      child: TabBarView(
                                        children: [
                                          Competition(),
                                          AboutBuyer(),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
