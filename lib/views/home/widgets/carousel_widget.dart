import 'dart:async';

import 'package:cafe_and_book/model/home/bestseller_model.dart';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  final List<Book> bestsellerList;
  const CarouselWidget({required this.bestsellerList, super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  int _currentPage = 1;
  late PageController _pageController;
  late Timer _timer;

  Timer periodicTimer() {
    _pageController = PageController();
    return Timer.periodic(const Duration(seconds: 4), (timer) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  void initState() {
    super.initState();

    _timer = periodicTimer();
    _pageController = PageController(viewportFraction: 0.45);
  }

  @override
  void dispose() {
    super.dispose();

    _timer.cancel();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Book> products = widget.bestsellerList;

    return SizedBox(
      height: 220,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page % products.length + 1;
              });
            },
            itemBuilder: (_, index) {
              String src = products[index % products.length].image;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0), // 페이지 간 간격 추가
                child: SizedBox(
                  height: 160,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                    child: Image.network(
                      src,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
