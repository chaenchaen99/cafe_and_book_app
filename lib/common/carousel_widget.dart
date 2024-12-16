// import 'dart:async';

// import 'package:cafe_and_book/model/bookcafe_model.dart';
// import 'package:flutter/material.dart';

// class CarouselWidget extends StatefulWidget {
//   final List<BookCafeModel> bookCafeItems;
//   const CarouselWidget({required this.bookCafeItems, super.key});

//   @override
//   State<CarouselWidget> createState() => _CarouselWidgetState();
// }

// class _CarouselWidgetState extends State<CarouselWidget> {
//   int _currentPage = 1;
//   late PageController _pageController;
//   late Timer _timer;

//   Timer periodicTimer() {
//     return Timer.periodic(const Duration(seconds: 4), (timer) {
//       _pageController.nextPage(
//           duration: const Duration(milliseconds: 500), curve: Curves.ease);
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     _pageController =
//         PageController(viewportFraction: 0.9); // viewportFraction 설정
//     _timer = periodicTimer();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _timer.cancel();
//     _pageController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<BookCafeModel> bookCafes = widget.bookCafeItems;

//     return SizedBox(
//       height: 220, // 전체 크기
//       child: Stack(
//         children: [
//           PageView.builder(
//             controller: _pageController,
//             onPageChanged: (page) {
//               setState(() {
//                 _currentPage = page % bookCafes.length + 1;
//               });
//             },
//             itemBuilder: (_, index) {
//               if (bookCafes.isNotEmpty) {
//                 String src =
//                     bookCafes[index % bookCafes.length].thumbnails.first;
//                 return Padding(
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 4.0), // 페이지 간 간격 추가
//                   child: ClipRRect(
//                     borderRadius: const BorderRadius.all(Radius.circular(12.0)),
//                     child: Image.network(
//                       src,
//                       fit: BoxFit.cover, // BoxFit을 cover로 설정하여 이미지 비율 유지
//                       errorBuilder: (context, error, stackTrace) {
//                         // 이미지 로드 실패 시 대체 이미지 표시
//                         return Container(
//                           color: Colors.grey, // 대체 색상 또는 기본 이미지
//                           child: const Icon(Icons.error, color: Colors.white),
//                         );
//                       },
//                     ),
//                   ),
//                 );
//               }
//               return const SizedBox(); // 책카페 아이템이 없으면 빈 SizedBox 반환
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
