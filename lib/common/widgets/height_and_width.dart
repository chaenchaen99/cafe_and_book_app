import 'package:flutter/material.dart';

const height4 = Height(height: 4);
const Height height10 = Height(height: 10);
const height16 = Height(height: 16);
const height20 = Height(height: 20);
const height40 = Height(height: 40);

const width4 = Width(width: 4);
const width8 = Width(width: 8);
const width20 = Width(width: 20);
const width40 = Width(width: 40);

class Height extends StatelessWidget {
  const Height({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

class Width extends StatelessWidget {
  const Width({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}
