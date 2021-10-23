import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/button.dart';
import 'package:frontend_flutter/Views/Utils/image_upload.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class SignUpRole extends StatefulWidget {
  @override
  _SignUpRoleState createState() => _SignUpRoleState();
}

class _SignUpRoleState extends State<SignUpRole> {
  final formKey = GlobalKey<FormState>();
  int select = 1;
  bool buyer = true;
  String role = "";

  void f1(int a) {
    setState(() {
      select = a;
      role = "buyer";
      buyer = true;
    });
  }

  void f2(int a) {
    setState(() {
      select = a;
      role = "seller";
      buyer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    String about = "";
    String phoneNo = "";
    String address = "";
    String specialization = "";
    String behance = "";

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.0),
        child: SafeArea(
          child: Container(
            height: size.height * 0.2,
            color: SecondaryBGColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.1,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: PrimaryBGColor,
                  size: 36.0,
                ),
                Text("Cover Photo:430 x 1280", style: BodyText2),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageUpload(),
                          SizedBox(
                            height: size.height * 0.01,
                            width: size.width * 0.8,
                          ),
                          Center(
                              child: Text("Profile Photo:400 x 500",
                                  style: BodyText3)),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Text("set Role", style: BodyText4),
                          Row(
                            children: <Widget>[
                              Radio(
                                  groupValue: select,
                                  value: 1,
                                  activeColor: LabelColor,
                                  onChanged: (v) {
                                    f1(v);
                                  }),
                              Text("Buyer"),
                              Radio(
                                  groupValue: select,
                                  value: 2,
                                  activeColor: LabelColor,
                                  onChanged: (v) {
                                    f2(v);
                                    setState(() {});
                                  }),
                              Text("Seller"),
                            ],
                          ),
                          Text(
                            "Phone No",
                            style: BodyText4,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          InputTextField(
                            obText: false,
                            validator: (val) {
                              if (val.length == 0)
                                return ("phoneNo is required");
                            },
                            onSaved: (val) {
                              phoneNo = val;
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "Address",
                            style: BodyText4,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          InputTextField(
                            obText: true,
                            validator: (val) {
                              if (val.length == 0)
                                return ("address is required");
                            },
                            onSaved: (val) {
                              address = val;
                            },
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                            "About",
                            style: BodyText4,
                          ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          InputTextField(
                            obText: true,
                            validator: (val) {
                              if (val.length == 0) return ("about is required");
                            },
                            onSaved: (val) {
                              about = val;
                            },
                          ),
                          SizedBox(
                            height: size.height * .01,
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          buyer
                              ? SizedBox()
                              : Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Specialization",
                                      style: BodyText4,
                                    ),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    InputTextField(
                                      obText: true,
                                      validator: (val) {
                                        if (val.length == 0)
                                          return ("specialization is required");
                                      },
                                      onSaved: (val) {
                                        specialization = val;
                                      },
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Text(
                                      "socials",
                                      style: BodyText4,
                                    ),
                                    SizedBox(
                                      height: size.height * 0.02,
                                    ),
                                    Text(
                                      "Behance",
                                      style: BodyText4,
                                    ),
                                    SizedBox(
                                      height: size.height * 0.01,
                                    ),
                                    InputTextField(
                                      obText: true,
                                      validator: (val) {
                                        if (val.length == 0)
                                          return ("behance is required");
                                      },
                                      onSaved: (val) {
                                        behance = val;
                                      },
                                    ),
                                  ],
                                ),
                          Divider(
                            height: 30,
                            thickness: 2,
                            indent: 7,
                            endIndent: 10,
                            color: SecondaryBGColor,
                          ),
                          CheckboxGroup(
                            labels: <String>[
                              "Privacy Policy",
                              "Terms & Conditions",
                              "Promotional Email from us",
                            ],
                            labelStyle: BodyText4,
                            activeColor: LabelColor,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * .050,
                          ),
                          Button(
                            text: 'Confirm',
                            onPressed: () async {},
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),
                          Column(
                            children: [
                              Container(
                                child: GestureDetector(
                                  onTap: () async {
                                    Navigator.of(context).pushNamed("/");
                                  },
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                            text: 'Already have an account?',
                                            style: TextStyle(
                                              color: PrimaryColor,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: 'Open-Sans',
                                            )),
                                        TextSpan(
                                          text: ' Sign in Please',
                                          style: BodyText3,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size.height * .03,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
