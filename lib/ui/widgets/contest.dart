import 'package:ecommerce/ui/widgets/styled_text.dart';
import 'package:flutter/material.dart';

class Contest extends StatelessWidget {
  const Contest({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const StyledText(
            'Contest Section',
            weight: FontWeight.bold,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.grey[200]!)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/contest1.jpg',
                          height: 80,
                          width: 80,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(height: 5),
                            StyledText(
                              'Play & Win 20 Credits',
                              size: 11,
                              weight: FontWeight.bold,
                            ),
                            StyledText(
                              'Click to Play',
                              size: 9,
                              weight: FontWeight.w500,
                            ),
                            SizedBox(height: 5),
                            StyledText(
                              'ENDS IN 3H 30M 50S',
                              color: Colors.pink,
                              size: 12,
                              weight: FontWeight.bold,
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
