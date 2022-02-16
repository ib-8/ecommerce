import 'package:ecommerce/ui/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: const [
              StyledText(
                'Trending Now',
                weight: FontWeight.bold,
              ),
              Icon(
                Icons.bolt,
                color: Colors.red,
                size: 20,
              )
            ],
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  3,
                  (index) => Card(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        color: Colors.amberAccent,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Container(
                                color: Colors.red,
                                child: Image.asset(
                                  'assets/trending${index + 1}.jpg',
                                  height: 80,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              StyledText(
                                index == 0
                                    ? 'Best Sellers'
                                    : index == 1
                                        ? 'New Launch'
                                        : 'On Sale',
                                size: 15,
                                weight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
