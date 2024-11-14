import 'package:flutter/material.dart';

class CateroyItem extends StatelessWidget {
  const CateroyItem({super.key});
  final Color color = const Color.fromARGB(82, 177, 117, 26);
  final String categoryName = 'Frash Fruits & Vegetable';
  final String imageLink =
      'https://img.freepik.com/free-psd/isolated-old-paper-scroll-ancient-papyrus_1409-3481.jpg?t=st=1730576038~exp=1730579638~hmac=5e009a917b38400f09a58059a4dfaaefd95be02d9bd46a317af4edead52587a9&w=826';
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          border: Border.all(color: color, width: 1),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 80, child: Image.network(imageLink)),
            const SizedBox(
              height: 24,
            ),
            Text(
              categoryName,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
