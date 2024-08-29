import 'package:autismart/const/const.dart';
import 'package:autismart/widgets/custom_design.dart';
import 'package:flutter/material.dart';

List<Widget> posisioned(BuildContext context) {
  return [
    Positioned(
        top: 160,
        right: 30,
        child: Image.asset(
          'images/yellow.png',
          height: 40,
          width: 40,
        )),
    Positioned(
        top: 30,
        right: 40,
        child: CustomDesign(height: 40, width: 40, color: purple)),
    Positioned(
        top: MediaQuery.of(context).size.height / 2 - 60,
        left: 40,
        child: CustomDesign(height: 40, width: 40, color: purple)),
    Positioned(
        top: MediaQuery.of(context).size.height / 2 - 40,
        right: 100,
        child: CustomDesign(height: 40, width: 40, color: blue)),
    Positioned(
        top: 40,
        left: 60,
        child: CustomDesign(height: 45, width: 45, color: green)),
    Positioned(
        bottom: 140,
        left: 60,
        child: CustomDesign(height: 45, width: 45, color: blue)),
    Positioned(
        top: MediaQuery.of(context).size.height / 2 + 20,
        left: 60,
        child: Image.asset(
          'images/purple.png',
          height: 40,
          width: 40,
        )),
    Positioned(
        top: 140,
        left: 20,
        child: CustomDesign(height: 40, width: 40, color: purpleAccent)),
    Positioned(
        bottom: 70,
        left: 20,
        child: CustomDesign(height: 40, width: 40, color: purple)),
    Positioned(
        top: 100,
        right: 150,
        child: Container(
          margin: const EdgeInsets.all(20),
          height: 50,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
            color: Color.fromARGB(255, 229, 191, 54),
          ),
          width: 50,
        )),
    Positioned(
        bottom: 20,
        right: 30,
        child: Container(
          margin: const EdgeInsets.all(20),
          height: 30,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
            color: green,
          ),
          width: 30,
        )),
    Positioned(
        bottom: 70,
        right: 80,
        child: Container(
          margin: const EdgeInsets.all(20),
          height: 45,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
            color: purpleAccent,
          ),
          width: 45,
        )),
    Positioned(
        top: MediaQuery.of(context).size.height / 2 + 20,
        right: 45,
        child: Container(
          margin: const EdgeInsets.all(20),
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(28),
            ),
            color: Color.fromARGB(255, 229, 191, 54),
          ),
          width: 40,
        )),
  ];
}
