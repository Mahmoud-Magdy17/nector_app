import 'package:flutter/material.dart';
import 'package:nector_app/core/widgets/custom_back_button.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/custom_scaffold.dart';
import 'package:nector_app/features/authontication/presentation/views/widgets/select_location_view_body.dart';

import 'widgets/custom_app_bar.dart';

class SelectLocationView extends StatelessWidget {
  const SelectLocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SafeArea(
                child: CustomAppBar(
                  leading: CustomBackButton(),
                ),
              ),
              SelectLocationViewBody(),
              SizedBox(
                // height: MediaQuery.of(context).size.height / 9,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
