import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_style.dart';

class GroceriesItemCard extends StatelessWidget {
  const GroceriesItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 222, 113),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            child: Image.network(
              fit: BoxFit.contain,
              'https://th.bing.com/th/id/OIP.UYagQDMo7CCbBLXOPB5etAHaHa?rs=1&pid=ImgDetMain',
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            "Pulses",
            style: AppTextStyle.gilroy26px600.copyWith(
              fontSize: 20,
              color: const Color(0xff3E423F),
            ),
          ),
          
        ],
      ),
    );
  }
}
