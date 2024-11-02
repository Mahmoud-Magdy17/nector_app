import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'custom_slide.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: CarouselSlider(
        items: const [
          CustomSlide(
            imageLink:
                'https://github.com/gskinnerTeam/flutter_custom_carousel/blob/assets/readme_example.gif?raw=true',
          ),
          CustomSlide(
            imageLink:
                'https://github.com/gskinnerTeam/flutter_custom_carousel/blob/assets/readme_example.gif?raw=true',
          ),
          CustomSlide(
            imageLink:
                'https://github.com/gskinnerTeam/flutter_custom_carousel/blob/assets/readme_example.gif?raw=true',
          ),
          CustomSlide(
            imageLink:
                'https://github.com/gskinnerTeam/flutter_custom_carousel/blob/assets/readme_example.gif?raw=true',
          ),
        ],
        options: CarouselOptions(),
      ),
    );
  }
}
