import 'package:ecommerce/ui/widgets/bottom_navigation.dart';
import 'package:ecommerce/ui/widgets/carousel.dart';
import 'package:ecommerce/ui/widgets/contest.dart';
import 'package:ecommerce/ui/widgets/menu.dart';
import 'package:ecommerce/ui/widgets/search_bar.dart';
import 'package:ecommerce/ui/widgets/styled_text.dart';
import 'package:ecommerce/ui/widgets/trending.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 10,
        title: Row(
          children: [
            Icon(
              Icons.account_circle,
              color: Colors.grey[200],
              size: 40,
            ),
            const SizedBox(width: 5),
            const StyledText(
              'Hepsi',
              size: 12,
              weight: FontWeight.w600,
            ),
          ],
        ),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(
              icon: Stack(
                alignment: Alignment.center,
                children: const [
                  Icon(Icons.notifications_outlined),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Card(
                      color: Colors.red,
                      child: SizedBox(height: 8, width: 8),
                    ),
                  ),
                ],
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SearchBar(),
            Menu(),
            const SizedBox(height: 20),
            const Carousel(),
            const SizedBox(height: 20),
            const Contest(),
            const Divider(thickness: 7),
            const Trending(),
            const Divider(thickness: 7),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
