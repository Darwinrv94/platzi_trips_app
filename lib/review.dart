import 'package:flutter/material.dart';
import 'rating.dart';

class Review extends StatelessWidget {
  final String pathImage;
  final String name;
  final String details;
  final String comment;
  final double stars;

  const Review(
    this.pathImage,
    this.name,
    this.details,
    this.comment,
    this.stars,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    final userComment = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(comment,
          textAlign: TextAlign.left,
          style: const TextStyle(fontFamily: 'Lato', fontSize: 15, fontWeight: FontWeight.w900)
        )
    );

    final userInfo = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: Text(details,
            textAlign: TextAlign.left,
            style: const TextStyle(fontFamily: 'Lato', fontSize: 10, color: Color(0xFFa3a5a7))
          )
        ),
        Rating(stars, 5.0, 14.0)
      ]
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontFamily: 'Lato',
          fontSize: 15,
          fontWeight: FontWeight.w900
        )
      )
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        userComment
      ],
    );

    final avatar = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 70.0,
      height: 70.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(pathImage),
        radius: 100,
      ),
    );

    return Row(
      children: [
        avatar,
        userDetails
      ],
    );
  }

}