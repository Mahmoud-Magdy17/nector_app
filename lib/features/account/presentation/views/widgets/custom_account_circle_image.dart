
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
        'https://th.bing.com/th/id/R.64de7efbdc763be88abee42bf36d190d?rik=z54qshSQj0PxvQ&pid=ImgRaw&r=0',
        fit: BoxFit.fill,
      ),
    );
  }
}
