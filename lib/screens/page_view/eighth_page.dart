import 'package:autismart/const/const.dart';
import 'package:flutter/material.dart';

class EighthPage extends StatefulWidget {
  const EighthPage({super.key});

  @override
  State<EighthPage> createState() => _EighthPageState();
}

class _EighthPageState extends State<EighthPage> with TickerProviderStateMixin {
  late final AnimationController firstController;
  late final AnimationController secondController;
  late final AnimationController thirdController;
  late final AnimationController fourthController;

  late final Animation<double> firstAnimation;
  late final Animation<double> secondAnimation;
  late final Animation<double> thirdAnimation;
  late final Animation<double> fourthAnimation;
  @override
  void initState() {
    super.initState();

    firstController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    secondController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    thirdController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    fourthController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    firstAnimation = CurvedAnimation(
      parent: firstController,
      curve: Curves.easeInSine,
    );

    secondAnimation = CurvedAnimation(
      parent: secondController,
      curve: Curves.easeInSine,
    );

    thirdAnimation = CurvedAnimation(
      parent: thirdController,
      curve: Curves.easeInSine,
    );

    fourthAnimation = CurvedAnimation(
      parent: fourthController,
      curve: Curves.easeInSine,
    );

    firstController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        secondController.forward();
      }
    });

    secondController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        thirdController.forward();
      }
    });

    thirdController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        fourthController.forward();
      }
    });

    firstController.forward();
  }

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    thirdController.dispose();
    fourthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueAccentColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 0,
            child: Container(
              decoration: const BoxDecoration(
                  color: fromTop,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70),
                      bottomRight: Radius.circular(60),
                      topLeft: Radius.circular(130),
                      bottomLeft: Radius.circular(50))),
              height: MediaQuery.of(context).size.height / 2.75,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6.8,
            child: Container(
              margin: const EdgeInsets.only(right: 30),
              decoration: const BoxDecoration(
                  color: fromBottom,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(140),
                      topRight: Radius.circular(200),
                      topLeft: Radius.circular(200),
                      bottomLeft: Radius.circular(80))),
              height: MediaQuery.of(context).size.height / 2.8,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            top: 8,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(80),
                  topLeft: Radius.circular(140),
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(90)),
              child: Opacity(
                opacity: 0.78,
                child: Image.asset(
                  'images/last_image.png',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 2.1,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 12,
            child: const Text(
              'Stay On Track',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'BoldenVan demo',
                  fontSize: 32,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6,
            child: const Text('Effortlessly guide your child’s daily routines',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15)),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: [
                  InkWell(
                      onTap: () {}, child: Image.asset('images/01 Button.png')),
                  const SizedBox(height: 8),
                  InkWell(
                      onTap: () {}, child: Image.asset('images/00 Button.png'))
                ],
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height / 3.5,
              left: 20,
              child: Image.asset(
                'images/pink_ball.png',
                height: 30,
                width: 30,
              )),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 20,
            child: const Text('©2024 AutiSmartWatch Powred by 7RATIO',
                style: TextStyle(color: Colors.white)),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 6,
            child: Row(
              children: [
                SizeTransition(
                  sizeFactor: firstAnimation,
                  axis: Axis.horizontal,
                  axisAlignment: -1.0,
                  child: Image.asset("images/fb.png"),
                ),
                const SizedBox(width: 4),
                SizeTransition(
                  sizeFactor: secondAnimation,
                  axis: Axis.horizontal,
                  axisAlignment: -1.0,
                  child: Image.asset("images/inst.png"),
                ),
                const SizedBox(width: 4),
                SizeTransition(
                  sizeFactor: thirdAnimation,
                  axis: Axis.horizontal,
                  axisAlignment: -1.0,
                  child: Image.asset("images/in.png"),
                ),
                const SizedBox(width: 4),
                SizeTransition(
                  sizeFactor: fourthAnimation,
                  axis: Axis.horizontal,
                  axisAlignment: -1.0,
                  child: Image.asset("images/twitter.png"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
