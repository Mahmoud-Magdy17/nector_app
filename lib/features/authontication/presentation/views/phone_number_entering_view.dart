
import 'package:flutter/material.dart';
import 'package:nector_app/core/router/app_router.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_next_page_floating_action_button.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_scaffold.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/phone_number_entering_view_body.dart';

class PhoneNumberEnteringView extends StatelessWidget {
  const PhoneNumberEnteringView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomNextPageFloatingActionButton(
        nextPageId: AppRouter.entering4DigitCodeView,
      ),
      body: const CustomScaffold(
        body: Column(
          children: [
            SafeArea(
              child: CustomAppBar(
                leading: CustomBackButton(),
              ),
            ),
            PhoneNumberEnteringViewBody(),
          ],
        ),
      ),
    );
  }
}
