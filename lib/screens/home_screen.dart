import 'package:autismart/const/const.dart';
import 'package:autismart/screens/page_view/page_view.dart';

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
        backgroundColor: Colors.white,
        appBar: AppBar(
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
