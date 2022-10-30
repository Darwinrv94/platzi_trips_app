import 'package:flutter/material.dart';
import 'gradient_back.dart';
import 'card_image_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});
  
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'beach_palm.jpeg',
      'beach.jpeg',
      'mountain_stars.jpeg',
      'mountain.jpeg',
      'river.jpeg',
      'sunset.jpeg'
    ];

    return Stack(
      children: [
        const GradiendtBack('Bienvenido'),
        CardImageList(images)
      ],
    );
  }
}