import 'package:autismart/const/const.dart';
import 'package:autismart/screens/page_view/page_view.dart';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Image.asset('images/init_image.png'),
          title: const Text(
            "AutiSmart",
            style:
                TextStyle(fontFamily: 'BoldenVan demo', color: blueAccentColor),
          ),
        ),
        body: PageView(
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
      ),
    );
  }
}
