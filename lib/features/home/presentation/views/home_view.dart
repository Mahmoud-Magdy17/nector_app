import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              
              // child: Text("data"),
            ),
            SliverAppBar(
              pinned: true, // Makes the AppBar sticky at the top
              // floating: false,
              expandedHeight: 80.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Icon(Icons.car_crash),
                centerTitle: true,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    leading: Icon(Icons.list),
                    title: Text('Item $index'),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
