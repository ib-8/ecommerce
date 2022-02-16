import 'package:ecommerce/ui/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      elevation: 0,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.pink,
      showUnselectedLabels: true,
      selectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      ),
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: StyledText(
            'm',
            size: 20,
            color: Colors.pink,
            weight: FontWeight.bold,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Categories',
          icon: Icon(Icons.grid_view),
        ),
        BottomNavigationBarItem(
          label: 'orders',
          icon: Icon(Icons.shopping_bag_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Community',
          icon: Icon(Icons.group_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Account',
          icon: Icon(Icons.person_outline),
        ),
      ],
    );
  }
}
