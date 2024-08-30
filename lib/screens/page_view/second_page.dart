import 'package:autismart/const/consts.dart';
import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            top: MediaQuery.of(context).size.height / 11,
            right: 40,
            child: CustomDesign(height: 30, width: 30, color: purple)),
        Positioned(
            top: MediaQuery.of(context).size.height / 5,
            left: 30,
            child: Image.asset(
              'images/green.png',
              height: 40,
              width: 40,
            )),
        Column(
          children: [
            const SizedBox(height: 24),
            const Text(
              'Enhance Your Child’s ',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 5),
            const Text(
              'Daily Routine',
              style: TextStyle(
                  fontFamily: 'BoldenVan demo',
                  fontSize: 26,
                  color: blueAccentColor),
            ),
            const SizedBox(height: 8),
            const Text('Simplify tasks and promote independence with'),
            const Text('our innovative smart watch'),
            SizedBox(height: MediaQuery.of(context).size.height / 2.3),
            const Text("AutiSmart is designed to support autistic"),
            const Text('children in managing their daily activities'),
            const Text('effortlessly, providing reminders and'),
            const Text('interactive for smoother routine')
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.5,
          left: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: blue,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(190),
                    bottomRight: Radius.circular(60),
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(120))),
            height: MediaQuery.of(context).size.height / 2.75,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.75,
          right: 20,
          child: Container(
            decoration: const BoxDecoration(
                color: purpleAccent,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    topRight: Radius.circular(60),
                    topLeft: Radius.circular(60),
                    bottomLeft: Radius.circular(130))),
            height: MediaQuery.of(context).size.height / 2.8,
            width: MediaQuery.of(context).size.width / 1.2,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 3.6,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
                topLeft: Radius.circular(56),
                bottomLeft: Radius.circular(120),
                bottomRight: Radius.circular(60)),
            child: Image.asset(
              'images/second_image.png',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width / 1.2,
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 1.65,
            left: 20,
            child: Image.asset(
              'images/yellow.png',
              height: 30,
              width: 30,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 9,
            right: 16,
            child: CustomDesign(height: 30, width: 30, color: purpleAccent)),
      ],
    );
  }
}
