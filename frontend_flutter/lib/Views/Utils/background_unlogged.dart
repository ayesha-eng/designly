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
            child: Image.asset(
              "assets/images/logo_1.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),

          ),


          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: size.height * 0.68,
              decoration: BoxDecoration(
                color: PrimaryBGColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                ),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
