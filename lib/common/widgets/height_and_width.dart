import 'package:flutter/material.dart';

const height10 = Height(height: 10);
const height16 = Height(height: 16);
const height20 = Height(height: 20);
const height40 = Height(height: 40);

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
