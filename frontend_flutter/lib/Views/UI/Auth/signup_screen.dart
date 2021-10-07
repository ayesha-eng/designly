import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/background_unlogged.dart';
import 'package:frontend_flutter/Views/Utils/button.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class SignUpScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    String username = "";
    String email = "";
    String password = "";
    String firstName = "";
    String lastName = "";
    Size size = MediaQuery.of(context).size;
    return BackgroundUnlogged(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: <Widget>[
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
                                Center(
                                  child: Text(
                                    "Sign Up",
                                    style: BodyText,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                Text(
                                  "Email",
                                  style: BodyText4,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                InputTextField(
                                  obText: false,
                                  validator: (val) {
                                    if (val.length == 0)
                                      return ("Username is required");
                                  },
                                  onSaved: (val) {
                                    username = val;
                                  },
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Text(
                                  "UserName",
                                  style: BodyText4,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                InputTextField(
                                  obText: false,
                                  validator: (val) {
                                    if (val.length == 0)
                                      return ("Username is required");
                                  },
                                  onSaved: (val) {
                                    username = val;
                                  },
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Text(
                                  "Password",
                                  style: BodyText4,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                InputTextField(
                                  obText: true,
                                  icon: Icons.lock,
                                  validator: (val) {
                                    if (val.length == 0)
                                      return ("Password is required");
                                  },
                                  onSaved: (val) {
                                    password = val;
                                  },
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Text(
                                  "FirstName",
                                  style: BodyText4,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                InputTextField(
                                  obText: true,
                                  validator: (val) {
                                    if (val.length == 0)
                                      return ("FirstName is required");
                                  },
                                  onSaved: (val) {
                                    firstName = val;
                                  },
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Text(
                                  "LastName",
                                  style: BodyText4,
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                InputTextField(
                                  obText: true,
                                  validator: (val) {
                                    if (val.length == 0)
                                      return ("LastName is required");
                                  },
                                  onSaved: (val) {
                                    lastName = val;
                                  },
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: size.height * .050,
                              ),
                              Button(
                                text: 'Continue',
                                onPressed: () async {
                                  Navigator.of(context)
                                      .pushNamed("/signup/role");
                                },
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
