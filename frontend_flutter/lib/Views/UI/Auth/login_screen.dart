import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/background_unlogged.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_flutter/Views/Utils/button.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class LoginScreen extends HookWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String username = "";
    String password = "";

    Size size = MediaQuery.of(context).size;
    return BackgroundUnlogged(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
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
                                    "Sign in",
                                    style: BodyText,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.07,
                                ),
                                Text(
                                  "Username",
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
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: size.height * .050,
                              ),
                              Button(
                                text: 'Sign in',
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
                                        Navigator.of(context)
                                            .pushNamed("/signup/screen");
                                      },
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                                text: 'Don\'t have an account?',
                                                style: TextStyle(
                                                  color: PrimaryColor,
                                                  fontSize: 17.0,
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: 'Open-Sans',
                                                )),
                                            TextSpan(
                                              text: ' Join here',
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
