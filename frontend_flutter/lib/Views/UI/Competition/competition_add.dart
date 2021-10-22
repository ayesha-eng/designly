import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/UI/Competition/filter_button.dart';
import 'package:frontend_flutter/Views/Utils/confirm_button.dart';
import 'package:frontend_flutter/Views/Utils/input_text_field.dart';

class CompetitionAdd extends StatefulWidget {
  @override
  _CompetitionAddState createState() => _CompetitionAddState();
}

class _CompetitionAddState extends State<CompetitionAdd> {
  @override
  Widget build(BuildContext context) {
    String name = "";
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
                  height: size.height * .01,
                ),
                Container(
                  height: size.height * .15,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Add Competition", style: BodyText1),
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
                                "Name",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: false,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("Name is required");
                                },
                                onSaved: (val) {
                                  name = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Text(
                                "Description",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("description is required");
                                },
                                onSaved: (val) {
                                  description = val;
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
                              Text(
                                "Start Date",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("startDate is required");
                                },
                                onSaved: (val) {
                                  startDate = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              Text(
                                "End Date",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("EndDate is required");
                                },
                                onSaved: (val) {
                                  endDate = val;
                                },
                              ),
                              SizedBox(
                                height: size.height * .01,
                              ),
                              Text(
                                "Level",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              DropdownSearch<String>(
                                  showClearButton: true,
                                  mode: Mode.MENU,
                                  items: [
                                    "Primary",
                                    "Mid",
                                    "Top",
                                  ],
                                  popupItemDisabled: (String s) =>
                                      s.startsWith('I'),
                                  onChanged: print,
                                  selectedItem: "Top"),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              Text(
                                "Prize",
                                style: BodyText4,
                              ),
                              SizedBox(
                                height: size.height * 0.01,
                              ),
                              InputTextField(
                                obText: true,
                                validator: (val) {
                                  if (val.length == 0)
                                    return ("prize is required");
                                },
                                onSaved: (val) {
                                  prize = val;
                                },
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
                                height: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.cancel_outlined),
                                  color: LabelColor,
                                  iconSize: 40.0,
                                  onPressed: () async {
                                    Navigator.of(context)
                                        .pushNamed("/dashboard/screen");
                                  },
                                ),
                                SizedBox(width: size.width * 0.01),
                                Expanded(
                                  child: ConfirmButton(
                                    text: ("Confirm & Publish"),
                                    onPressed: () async {
                                      Navigator.of(context)
                                          .pushNamed("/dashboard/screen");
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .05,
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
      )),
    );
  }
}
