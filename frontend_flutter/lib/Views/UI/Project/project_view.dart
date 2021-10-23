import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/banner_screen.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class ProjectView extends StatefulWidget {
  @override
  _ProjectViewState createState() => _ProjectViewState();
}

class _ProjectViewState extends State<ProjectView> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String comment = "";
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PrimaryBGColor,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            BannerScreen(
              coverImage: "assets/images/download.jpeg",
              title: "Project Name",
              firstIcon: Icons.favorite_border,
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
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.43,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30.0, right: 50.0),
                      child: Column(
                        children: [
                          Container(
                            height: size.height * 0.35,
                            width: size.width * 0.70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: PrimaryBGColor,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/cover.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: LabelColor,
                  size: 24.0,
                ),
                Text(
                  "Appreciate this work",
                  style: BodyText1,
                ),
              ],
            ),
            SizedBox(height: size.height * 0.02),
            Column(
              children: [
                Text(
                  "descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription",
                  style: BodyText1,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Leave a Comment",
                    style: BodyText1,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Form(
                    key: formKey,
                    child: InputTextField(
                      obText: true,
                      validator: (val) {
                        if (val.length == 0) return ("comment is required");
                      },
                      onSaved: (val) {
                        comment = val;
                      },
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    "Project Info",
                    style: BodyText1,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Published Date",
                    style: BodyText1,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Copyright",
                    style: BodyText1,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    "Tags",
                    style: BodyText1,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
