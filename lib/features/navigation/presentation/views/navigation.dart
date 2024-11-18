import 'package:flutter/material.dart';
import 'package:nector_app/features/explore/presentation/views/explore_view.dart';
import 'package:nector_app/features/favorite/presentation/views/favorite_view.dart';
import 'package:nector_app/features/home/presentation/views/home_view.dart';
import 'package:nector_app/features/my_cart/presentation/views/my_cart_view.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int currentView = 0;
  var views = [
    const HomeView(),
    const ExploreView(),
    const MyCartView(),
    const FavoriteView(),
    const HomeView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
      NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
        onDestinationSelected: (int selectedView) {
          setState(() {
            currentView = selectedView;
          });
        },
        selectedIndex: currentView,
      ),
      body: views[currentView],
    );
  }
}
