import 'package:flutter/material.dart';
import 'card_image.dart';
// import 'scroll_behavior.dart';

class CardImageList extends StatelessWidget {
  final List<String> images;

  const CardImageList(this.images, {super.key});

  @override
  Widget build(BuildContext context) {
    //final ScrollController controller = ScrollController();

    var listCardImage = <Widget>[];

    for (var i = 0; i < images.length; i++) {
      var element = images.elementAt(i);
      listCardImage.add(CardImage('assets/images/$element'));
    }

    return SizedBox(
      height: 330.0,
      /*child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.builder(
          padding: const EdgeInsets.all(25.0),
          scrollDirection: Axis.horizontal,
          controller: controller,
          itemCount: images.length,
          itemBuilder:(context, i) => {
            var image = images[i];
            return CardImage('assets/images/$image');
          },
        ),
      ),*/
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: listCardImage
      )
    );
  }

}