import 'package:autismart/const/consts.dart';
import 'package:autismart/widgets/custom_design.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  final int index;
  const CustomDrawer({super.key, required this.index});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 8),
                Image.asset(
                  'images/init_image.png',
                  height: 40,
                  width: 40,
                ),
                Text(
                  "AutiSmart",
                  style: TextStyle(
                      fontFamily: 'BoldenVan demo',
                      fontSize: 19,
                      color:
                          widget.index == 7 ? blueAccentColor : Colors.white),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Company",
                  style: TextStyle(
                      color: green, fontSize: 24, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Text(
                  "About us",
                  style: TextStyle(
                      color: widget.index == 7 ? blueAccentColor : Colors.white,
                      fontFamily: 'BoldenVan demo',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 8),
                Text(
                  "Contact us",
                  style: TextStyle(
                      color: widget.index == 7 ? blueAccentColor : Colors.white,
                      fontFamily: 'BoldenVan demo',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 8),
                Text(
                  "Terms of service",
                  style: TextStyle(
                      color: widget.index == 7 ? blueAccentColor : Colors.white,
                      fontFamily: 'BoldenVan demo',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "SERVISES",
                  style: TextStyle(
                      color: yellow2,
                      fontSize: 24,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 8),
                Text(
                  "Developement",
                  style: TextStyle(
                      color: widget.index == 7 ? blueAccentColor : Colors.white,
                      fontFamily: 'BoldenVan demo',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 8),
                Text(
                  "Consulting",
                  style: TextStyle(
                      color: widget.index == 7 ? blueAccentColor : Colors.white,
                      fontFamily: 'BoldenVan demo',
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  "Language",
                  style: TextStyle(
                      color: yellow2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('images/en.png'),
                    Image.asset('images/ar.png'),
                    Image.asset('images/fr.png'),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text('©2024 AutiSmartWatch',
                    style: TextStyle(
                        color: widget.index == 7
                            ? blueAccentColor
                            : Colors.white)),
                Text('Powred by 7RATIO',
                    style: TextStyle(
                        color:
                            widget.index == 7 ? blueAccentColor : Colors.white))
              ],
            ),
          ],
        ),
        Positioned(
            top: MediaQuery.of(context).size.height / 8,
            right: 20,
            child: Image.asset(
              'images/yellow.png',
              height: 29,
              width: 29,
            )),
        Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: 0,
            child: CustomDesign(height: 40, width: 40, color: green)),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 4,
            right: 0,
            child: Image.asset(
              'images/green.png',
              height: 40,
              width: 40,
            )),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 12,
            left: 0,
            child: CustomDesign(height: 30, width: 30, color: purple)),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 30,
            right: 0,
            child: CustomDesign(height: 30, width: 30, color: purpleAccent)),
      ],
    );
  }
}
