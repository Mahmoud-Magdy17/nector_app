import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nector_app/core/utils/app_colors.dart';
import 'package:nector_app/core/utils/app_style.dart';
import 'package:nector_app/features/home/presentation/views/widgets/custom_home_view_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: CustomMainHomeViewAppBar(),
              ),
              SliverAppBar(
                surfaceTintColor: Colors.transparent,
                shadowColor: Colors.transparent,
                titleTextStyle:
                    AppTextStyle.gilroy16px500.copyWith(color: Colors.black),
                pinned: true,
                floating: false,
                centerTitle: true,
                expandedHeight: 32.0,
                title: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 12),
                  width: double.infinity,
                  height: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.offWhite,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextField(
                      clipBehavior: Clip.hardEdge,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none),
                        label: const Text("Search Store"),
                        prefixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.magnifyingGlass,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        labelStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      style: AppTextStyle.gilroy28px800.copyWith(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      leading: const Icon(Icons.list),
                      title: Text('Item $index'),
                    );
                  },
                  childCount: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
