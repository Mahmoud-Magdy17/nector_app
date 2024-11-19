import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_text_button.dart';
import 'package:nector_app/features/navigation/presentation/views/navigation.dart';

class OrderDoneViewBodyActions extends StatelessWidget {
  const OrderDoneViewBodyActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomTextButton(
        text: "Track Order",
        onPressed: () {},
      ),
      const SizedBox(
        height: 8,
      ),
      CustomTextButton(
        text: "Back to home",
        onPressed: () {
          Navigator.pop(context);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const NavigationView();
              },
            ),
          );
        },
        color: Colors.transparent,
        textColor: const Color(0xff181725),
      ),
    ]);
  }
}
