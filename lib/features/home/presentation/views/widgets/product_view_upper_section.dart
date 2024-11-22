

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PruductViewUpperSection extends StatelessWidget {
  const PruductViewUpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      height: MediaQuery.of(context).size.height / 2.6,
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: Color(0xffF2F3F2),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(FontAwesomeIcons.angleLeft),
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.arrowUpFromBracket),
                  color: Colors.black,
                ),
              ],
            ),
            Image.network(
              'https://cdn-icons-png.flaticon.com/128/2276/2276931.png',
              height: MediaQuery.of(context).size.height / 4.2,
            ),
          ],
        ),
      ),
    );
  }
}
