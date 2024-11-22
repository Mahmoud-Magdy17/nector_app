
import 'package:flutter/material.dart';

class CustomAccountCircleImage extends StatelessWidget {
  const CustomAccountCircleImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(48),
      ),
      child: Image.network(
        'https://th.bing.com/th/id/OIP.Ys5ORmPfhnAit-66JwaqMQHaEJ?rs=1&pid=ImgDetMain',
        fit: BoxFit.cover,
      ),
    );
  }
}
