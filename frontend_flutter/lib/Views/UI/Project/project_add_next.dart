import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Competition/filter_button.dart';
import 'package:frontend_flutter/Views/Utils/confirm_button.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class ProjectAddNext extends StatefulWidget {
  @override
  _ProjectAddNextState createState() => _ProjectAddNextState();
}

class _ProjectAddNextState extends State<ProjectAddNext> {
  int select = 2;

  void f1(int a) {
    setState(() {
      select = a;
      Navigator.of(context).pushNamed("/project/add");
    });
  }

  void f2(int a) {
    setState(() {
      select = a;
      Navigator.of(context).pushNamed("/project/add/next");
    });
  }

  void f3(int a) {
    setState(() {
      select = a;
      Navigator.of(context).pushNamed("/project/add/preview");
    });
  }

  @override
  Widget build(BuildContext context) {
    String projectDescription = "";
    String teamMembers = "";

    String tags = "";
    final formKey = GlobalKey<FormState>();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * .01,
                ),
                Container(
                  height: size.height * .15,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text("Add Project", style: BodyText1),
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          Radio(
                              groupValue: select,
                              value: 1,
                              activeColor: LabelColor,
                              onChanged: (v) {
                                f1(v);
                              }),
                          Container(
                            color: LabelColor,
                            height: size.height * 0.003,
                            width: size.width * 0.2,
                          ),
                          Radio(
                              groupValue: select,
                              value: 2,
                              activeColor: LabelColor,
                              onChanged: (v) {
                                f2(v);
                                setState(() {});
                              }),
                          Container(
                            color: LabelColor,
                            height: size.height * 0.003,
                            width: size.width * 0.2,
                          ),
                          Radio(
                              groupValue: select,
                              value: 3,
                              activeColor: LabelColor,
                              onChanged: (v) {
                                f3(v);
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Container(
                          width: size.width * 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project Description",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("projectDescription is required");
                                },
                                onSaved: (val) {
                                  projectDescription = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              Text(
                                "Add a Cover Photo",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Container(
                                height: size.height * 0.3,
                                width: size.width,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: SecondaryBGColor,
                                    width: 2,
                                  ),
                                ),
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
                                    Text("Add  Cover:300 x 400",
                                        style: BodyText4),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              Text(
                                "Tags",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("tags is required");
                                },
                                onSaved: (val) {
                                  tags = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Container(
                                height: 32,
                                margin: EdgeInsets.only(top: 16),
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    FilterButton(
                                      title: "Ui/UX",
                                      isSelected: true,
                                    ),
                                    FilterButton(
                                      title: "Logo",
                                      isSelected: false,
                                    ),
                                    FilterButton(
                                      title: "Business Card",
                                      isSelected: false,
                                    ),
                                    FilterButton(
                                      title: "Wedding card",
                                      isSelected: false,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Text(
                                "Team Members",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("teamMembers is required");
                                },
                                onSaved: (val) {
                                  teamMembers = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              ConfirmButton(
                                text: ("Preview"),
                                onPressed: () async {
                                  Navigator.of(context)
                                      .pushNamed("/project/add/preview");
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
