import 'package:autismart/const/const.dart';
import 'package:autismart/main.dart';

import 'package:autismart/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _imageController;
  late Animation<Offset> _imageAnimation;
  bool _showFirstText = false;
  bool _showSecondText = false;

  @override
  void initState() {
    super.initState();

    _imageController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _imageAnimation = Tween<Offset>(
      begin: const Offset(0.0, 1.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _imageController,
      curve: Curves.easeInOut,
    ));

    _imageController.forward().then((_) {
      setState(() {
        _showFirstText = true;
      });

      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _showSecondText = true;
        });
      });

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const Home(),
        ));
      });
    });
  }

  @override
  void dispose() {
    _imageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              ...posisioned(context),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SlideTransition(
                      position: _imageAnimation,
                      child: Image.asset(
                        'images/init_image.png',
                        width: 220,
                        height: 220,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        AnimatedOpacity(
                          opacity: _showFirstText ? 1.0 : 0.0,
                          duration: const Duration(seconds: 1),
                          child: const Text(
                            'AutiSmart',
                            style: TextStyle(
                              color: blueAccentColor1,
                              fontFamily: 'BoldenVan demo',
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          opacity: _showSecondText ? 1.0 : 0.0,
                          duration: const Duration(seconds: 1),
                          child: const Text(
                            'welcome',
                            style: TextStyle(
                              color: blueAccentColor1,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
