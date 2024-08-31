import 'package:autismart/const/const.dart';
import 'package:autismart/screens/page_view/page_view.dart';
import 'package:autismart/widgets/widgets.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
            backgroundColor: index == 7 ? Colors.white : blueAccentColor,
            width: MediaQuery.of(context).size.width / 1.5,
            child: CustomDrawer(index: index)),
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            Builder(
              builder: (context) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  child: Image.asset('images/humberger menu.png'),
                );
              },
            ),
            const SizedBox(width: 8),
          ],
          backgroundColor: index == 7 ? blueAccentColor : Colors.white,
          leading: Image.asset('images/init_image.png'),
          title: Text(
            "AutiSmart",
            style: TextStyle(
                fontFamily: 'BoldenVan demo',
                color: index == 7 ? Colors.white : blueAccentColor),
          ),
        ),
        body: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              children: const [
                FirstPage(),
                SecondPage(),
                ThirdPage(),
                FourthPage(),
                FifthPage(),
                SixthPage(),
                SeventhPage(),
                EighthPage(),
              ],
            ),
            Positioned(
                bottom: 16,
                child: SizedBox(
                  height: 7,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, ind) {
                        return index >= ind
                            ? Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                height: 7,
                                width: 41,
                                decoration: BoxDecoration(
                                    color: blueAccentColor,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: blueAccentColor, width: 0.5)))
                            : Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                height: 7,
                                width: 41,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        color: blueAccentColor, width: 0.5)),
                              );
                      }),
                ))
          ],
        ),
      ),
    );
  }
}

/*
Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
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
                                  index == 7 ? blueAccentColor : Colors.white),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 8),
                    const Text(
                      "Company",
                      style: TextStyle(
                          color: green,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "About us",
                      style: TextStyle(
                          color: blueAccentColor,
                          fontFamily: 'BoldenVan demo',
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Contact us",
                      style: TextStyle(
                          color: blueAccentColor,
                          fontFamily: 'BoldenVan demo',
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Terms of service",
                      style: TextStyle(
                          color: blueAccentColor,
                          fontFamily: 'BoldenVan demo',
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "SERVISES",
                      style: TextStyle(
                          color: yellow2,
                          fontSize: 24,
                          fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Developement",
                      style: TextStyle(
                          color: blueAccentColor,
                          fontFamily: 'BoldenVan demo',
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Consulting",
                      style: TextStyle(
                          color: blueAccentColor,
                          fontFamily: 'BoldenVan demo',
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "SERVISES",
                      style: TextStyle(
                          color: yellow2,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('images/en.png'),
                        Image.asset('images/ar.png'),
                        Image.asset('images/fr.png'),
                      ],
                    ),
                    const Text('©2024 AutiSmartWatch \nPowred by 7RATIO'),
                  ],
                ),
              ],
            )
*/