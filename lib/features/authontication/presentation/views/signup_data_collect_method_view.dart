import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_assets.dart';

import 'widgets/signup_data_collect_method_view_body.dart';

class SignupDataCollectMethodView extends StatelessWidget {
  const SignupDataCollectMethodView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height * 1) / 3,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppAssets.imageSignIn),
              ),
            ),
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 2) / 3,
            child: const SignupDataCollectMethodViewBody(),
          ),
        ],
      ),
    );
  }
}
