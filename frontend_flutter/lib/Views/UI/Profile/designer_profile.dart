import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Profile/Review.dart';
import 'package:frontend_flutter/Views/UI/Profile/about_designer.dart';
import 'package:frontend_flutter/Views/UI/Profile/gallery.dart';
import 'package:frontend_flutter/Views/UI/Profile/profile_background.dart';
import 'package:frontend_flutter/Views/UI/Profile/profile_icon.dart';
import 'package:frontend_flutter/Views/Utils/custom_button.dart';

class DesignerProfile extends StatefulWidget {
  @override
  _DesignerProfileState createState() => _DesignerProfileState();
}

class _DesignerProfileState extends State<DesignerProfile> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ProfileBackground(
      label: "Designer Name",
      onTap:  () async {
                    Navigator.of(context).pushNamed("");
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: LabelColor,
                                size: 27.0,
                              ),
                              Icon(
                                Icons.star,
                                color: LabelColor,
                                size: 27.0,
                              ),
                              Icon(
                                Icons.star,
                                color: LabelColor,
                                size: 27.0,
                              ),
                              Icon(
                                Icons.star,
                                color: LabelColor,

                                size: 27.0,
                              ),
                              Icon(
                                Icons.star,
                                color: LabelColor,
                                size: 27.0,
                              ),
                              Text("5.0 (10)", style: BodyText4),
                            ],
                          ),
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
                              SizedBox(width: size.width * 0.03),
                              CustomButton(
                                text: 'Hire',
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
                              length: 3,
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
                                        Tab(text: "Gallery"),
                                        Tab(text: "About"),
                                        Tab(text: "Review"),
                                      ],
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Container(
                                      height: size.height * 0.65,
                                      width: size.width,
                                      child: TabBarView(
                                        children: [
                                          Gallery(),
                                          AboutDesigner(),
                                          Review(),
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
