import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<String> slides = [
    'assets/slide1.jpg',
    'assets/slide2.jpg',
    'assets/slide3.jpg',
    'assets/slide4.jpg',
  ];

  int slideIndex = 0;

  final PageController _pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130,
          child: PageView.builder(
            controller: _pageController,
            itemCount: slides.length,
            itemBuilder: (context, index) {
              var slide = slides[index];
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: Colors.grey[200]!)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    slide,
                    fit: BoxFit.fill,
                    height: 120,
                  ),
                ),
              );
            },
            onPageChanged: (index) {
              setState(() {
                slideIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              slides.length,
              (index) => Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: slideIndex == index ? Colors.pink : Colors.grey[300],
                    child: SizedBox(
                      height: slideIndex == index ? 4.5 : 3,
                      width: slideIndex == index ? 12 : 8,
                    ),
                  )),
        ),
      ],
    );
  }
}
