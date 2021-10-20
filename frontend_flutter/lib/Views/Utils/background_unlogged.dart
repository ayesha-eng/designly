import 'package:flutter/material.dart';
import 'package:frontend_flutter/Config/constants.dart';

class BackgroundUnlogged extends StatelessWidget {
  final Widget child;

  const BackgroundUnlogged({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.15,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: size.width * 0.2,
                    height: size.height * 0.12,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: size.height * 0.3,
              ),
              Expanded(
                child: Container(
                  height: size.height * 0.60,
                  decoration: BoxDecoration(
                    color: PrimaryBGColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                    ),
                  ),
                  child: child,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
