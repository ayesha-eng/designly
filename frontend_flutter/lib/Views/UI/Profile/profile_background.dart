import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';
import 'package:frontend_flutter/Views/Utils/side_drawer.dart';

class ProfileBackground extends StatefulWidget {
  final Widget child;
  final Widget leading;
  final String label;
  final Color headerColor;
  final Color appbarBG;
  final List<Widget> actions;
  final Function onTap;

  const ProfileBackground({
    Key key,
    @required this.child,
    this.leading,
    @required this.label,
    this.appbarBG = Colors.transparent,
    this.headerColor = PrimaryColor,
    this.actions,
    this.onTap,
  }) : super(key: key);

  @override
  _ProfileBackgroundState createState() => _ProfileBackgroundState();
}

class _ProfileBackgroundState extends State<ProfileBackground> {
  GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      endDrawer: SideDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(72.0),
        child: SafeArea(
          child: Container(
            height: size.height * 0.1,
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  child: Container(
                    child: Text(
                      widget.label,
                      overflow: TextOverflow.ellipsis,
                      style: BodyText1,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.35,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Icon(
                    Icons.edit,
                    color: LabelColor,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                GestureDetector(
                  onTap: () async {
                    _key.currentState.openEndDrawer();
                  },
                  child: Icon(
                    Icons.menu,
                    color: LabelColor,
                    size: 30.0,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          widget.child,
        ],
      ),
    );
  }
}
