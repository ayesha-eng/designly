import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/custom_button.dart';

class SideDrawer extends HookWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: PrimaryBGColor,
      width: size.width * 0.57,
      child: Drawer(
        child: new ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: size.height * 0.1,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 40),
                    child: Text(
                      "Menu",
                      style: BodyText1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 170.0, top: 30),
                      child: new Icon(
                        Icons.arrow_right_alt_outlined,
                        color: LabelColor,
                        size: 40.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: LabelColor,
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: LabelColor,
                size: 40.0,
              ),
              title: Text('Settings'),
              onTap: () {
                Navigator.of(context).pushNamed("/competition/add");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.sd_card_alert_outlined,
                color: LabelColor,
                size: 40.0,
              ),
              title: Text('Help'),
              onTap: () {
                Navigator.of(context).pushNamed("");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.star,
                color: LabelColor,
                size: 40.0,
              ),
              title: Text('Rate Us'),
              onTap: () {
                Navigator.of(context).pushNamed("");
              },
            ),
            ListTile(
              leading: Icon(
                Icons.lock,
                color: LabelColor,
                size: 40.0,
              ),
              title: Text("Change Password"),
              onTap: () {},
            ),
            SizedBox(
              height: size.height * 0.45,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                child: CustomButton(
                  text: 'Log out',
                  onPressed: () async {
                    Navigator.of(context).pushNamed("/dashboard/screen");
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
