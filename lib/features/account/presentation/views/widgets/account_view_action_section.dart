import 'package:flutter/material.dart';
import 'package:nector_app/core/utils/app_colors.dart';

import 'custom_account_listtile.dart';

class AccountViewActionsSection extends StatelessWidget {
  const AccountViewActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.local_mall_outlined,
            title: "Orders",
          ),

          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.badge_outlined,
            title: "My Details",
          ),

          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.location_on_outlined,
            title: "Delivery Address",
          ),

          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.credit_card,
            title: "Payment Methods",
          ),
          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.local_activity_outlined,
            title: "Promo Cord",
          ),
          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.notifications,
            title: "Notifecations",
          ),
          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.help_outline_outlined,
            title: "Help",
          ),
          CustomViewDivider(),
          CustomAccountViewListTile(
            leading: Icons.error_outline,
            title: "About",
          ),
          
        ],
      ),
    );
  }
}

class CustomViewDivider extends StatelessWidget {
  const CustomViewDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppColors.grey,
      thickness: 1,
      height: 0,
    
    );
  }
}
