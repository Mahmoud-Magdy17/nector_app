import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/widgets/custom_text_with_icon_button.dart';

import 'custom_account_listtile.dart';

class AccountViewActionsSection extends StatelessWidget {
  const AccountViewActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.local_mall_outlined,
            title: "Orders",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.badge_outlined,
            title: "My Details",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.location_on_outlined,
            title: "Delivery Address",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.credit_card,
            title: "Payment Methods",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.local_activity_outlined,
            title: "Promo Cord",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.notifications,
            title: "Notifecations",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.help_outline_outlined,
            title: "Help",
          ),
          Divider(
            color: AppColors.grey,
            thickness: 1,
          ),
          CustomAccountViewListTile(
            leading: Icons.error_outline,
            title: "About",
          ),
          CustomTextWithIconButton(
            text: "Continue with Google",
            onPressed: () {},
            icon: Icon(
              Icons.logout_outlined,
            ),
            color: AppColors.offWhite,
            textColor: AppColors.primaryColor,
          )
        ],
      ),
    );
  }
}
