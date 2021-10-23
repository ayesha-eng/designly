import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/confirm_button.dart';

class ProjectAddPreview extends StatefulWidget {
  @override
  _ProjectAddPreviewState createState() => _ProjectAddPreviewState();
}

class _ProjectAddPreviewState extends State<ProjectAddPreview> {
  int select = 3;

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
                        child: Text("Project Preview", style: BodyText1),
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
                  height: size.height * 0.35,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: PrimaryBGColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/download.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Project Name",
                        style: BodyText1,
                      )),
                ),
                Container(
                  height: size.height * 0.43,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 50.0),
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
                                      image: AssetImage(
                                          "assets/images/download.jpeg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.06,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Project description",
                            style: BodyText1,
                          )),
                      Text(
                        "description description description description descriptiondescriptiondescriptiondescription",
                        style: BodyText5,
                      ),
                      SizedBox(
                        height: size.height * 0.15,
                      ),
                      ConfirmButton(
                        text: ("Confirm & Publish"),
                        onPressed: () async {
                          Navigator.of(context).pushNamed("/project/view");
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
