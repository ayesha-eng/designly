import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/confirm_button.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class ProjectAdd extends StatefulWidget {
  @override
  _ProjectAddState createState() => _ProjectAddState();
}

class _ProjectAddState extends State<ProjectAdd> {
  int select = 1;
  void f1(int a) {
    setState(() {
      select = a;
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
    String projectName = "";
    String description = "";
    String startDate = "";
    String endDate = "";
    String prize = "";
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
                  height: size.height * .03,
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
                                "project Name ",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: false,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("projectName  is required");
                                },
                                onSaved: (val) {
                                  projectName = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.05,
                              ),
                              Container(
                                height: size.height * 0.3,
                                width: size.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/download.jpeg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Icon(
                                        Icons.cancel_rounded,
                                        color: Colors.black,
                                        size: 30.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.1,
                              ),
                              DottedBorder(
                                color: LabelColor,
                                borderType: BorderType.RRect,
                                dashPattern: [15, 8, 15, 8],
                                strokeWidth: 1,
                                child: Container(
                                  height: size.height * 0.15,
                                  width: size.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: size.height * 0.03,
                                      ),
                                      Icon(
                                        Icons.camera_alt_outlined,
                                        color: LabelColor,
                                        size: 25.0,
                                      ),
                                      Text("Add Image or Video",
                                          style: BodyText4),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.02,
                              ),
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              ConfirmButton(
                                text: ("Continue"),
                                onPressed: () async {
                                  Navigator.of(context)
                                      .pushNamed("/project/add/next");
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
