import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/button.dart';
import 'package:frontend_flutter/Views/Utils/image_upload.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class DesignerProfileEdit extends StatefulWidget {
  @override
  _DesignerProfileEditState createState() => _DesignerProfileEditState();
}

class _DesignerProfileEditState extends State<DesignerProfileEdit> {
  final formKey = GlobalKey<FormState>();

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
                              if (val.length == 0) return ("specialization is required");
                            },
                            onSaved: (val) {
                              specialization = val;
                            },
                          ),
                          SizedBox(
                            height: size.height * .01,
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
                              if (val.length == 0) return ("behance is required");
                            },
                            onSaved: (val) {
                              behance = val;
                            },
                          ),
                          SizedBox(
                            height: size.height * .02,
                          ),



                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: size.height * .050,
                          ),
                          Button(
                            text: 'Update',
                            onPressed: () async {},
                          ),
                          SizedBox(
                            height: size.height * .02,
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
