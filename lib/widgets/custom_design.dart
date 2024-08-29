import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDesign extends StatelessWidget {
  final double width;
  final double height;
  Color? color;
  CustomDesign({
    super.key,
    required this.height,
    required this.width,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(80),
            bottomRight: Radius.circular(80),
            bottomLeft: Radius.circular(60),
            topRight: Radius.circular(180)),
        color: color,
      ),
    );
  }
}
