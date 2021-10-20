import 'package:flutter/material.dart';
import 'package:frontend_flutter/Views/UI/Profile/review_card.dart';

class Review extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                  child: Column(
                    children: [
                      ReviewCard(
                        title: "Project Name Project Name",
                        subTitle: "Designer Name Designer Name",
                        iconImage: 'assets/images/Eye _1.png',
                        image: 'assets/images/writer.jpg',
                        number: "999",
                      ),
                      SizedBox(
                        height: size.height * 0.06,
                      ),
                    ],
                  ),
                );
              }),
        )
      ],
    );
  }
}
