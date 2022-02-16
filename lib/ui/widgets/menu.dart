import 'package:ecommerce/model/menu_item.dart';
import 'package:ecommerce/ui/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({
    Key? key,
  }) : super(key: key);

  final List<MenuItem> menuItems = [
    MenuItem(image: 'assets/categories.png', name: 'Categories'),
    MenuItem(image: 'assets/dress.png', name: 'Women'),
    MenuItem(image: 'assets/earrings.png', name: 'Ear Rings'),
    MenuItem(image: 'assets/saree.png', name: 'Sarees'),
    MenuItem(image: 'assets/handbag.png', name: 'Handbags'),
    MenuItem(image: 'assets/night dress.png', name: 'Lingeries'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: menuItems
            .map(
              (item) => Column(
                children: [
                  ClipOval(
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      elevation: 0,
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.grey[200]!)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          item.image,
                          height: 35,
                          width: 35,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  StyledText(
                    item.name,
                    size: 11,
                    weight: FontWeight.w500,
                  )
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
