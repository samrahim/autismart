import 'package:autismart/const/const.dart';
import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height / 13,
            right: 26,
            child: Image.asset(
              "images/pink_ball.png",
              height: 44,
              width: 45,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 17,
            left: 16,
            child: Container(
              margin: const EdgeInsets.all(20),
              height: 40,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(28),
                ),
                color: yellow,
              ),
              width: 40,
            )),
        Column(
          children: [
            const SizedBox(height: 24),
            const Text(
              'Empower Your Child’s',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 5),
            const Text(
              'Independence',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 8),
            const Text(
              'Empower your child’s independence with case',
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 2.35),
            const Text("AutiSmart offers seamless support"),
            const Text('for managing routines efficiently'),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 5,
          left: 20,
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            decoration: const BoxDecoration(
                color: yellow,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(90),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(160),
                    bottomLeft: Radius.circular(50))),
            height: MediaQuery.of(context).size.height / 2.75,
            width: MediaQuery.of(context).size.width / 1.175,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4.6,
          right: 20,
          child: Container(
            margin: const EdgeInsets.only(right: 30),
            decoration: const BoxDecoration(
                color: purple,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(120),
                    bottomLeft: Radius.circular(40))),
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width / 1.25,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 4.8,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(90),
                topLeft: Radius.circular(120),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(60)),
            child: Image.asset(
              'images/fifth_image.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 5.7,
            right: 20,
            child: Image.asset(
              'images/pink.png',
              height: 51,
              width: 50,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 8,
            left: 20,
            child: CustomDesign(height: 40, width: 40, color: green)),
      ],
    );
  }
}
