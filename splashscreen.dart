import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _logoAnimation;
  Animation<double> _imageAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _logoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.0, 0.5, curve: Curves.easeInOut),
      ),
    );

    _imageAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.5, 1.0, curve: Curves.easeInOut),
      ),
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your global color here
      body: Stack(
        alignment: Alignment.center,
        children: [
          FadeTransition(
            opacity: _imageAnimation,
            child: Image.asset(
              'assets/images/bottom_image.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          FadeTransition(
            opacity: _logoAnimation,
            child: ScaleTransition(
              scale: _logoAnimation,
              child: Text(
                'Hello Everyone', // Set your global text here
                style: TextStyle(
                  fontFamily: 'YourGlobalFontFamily', // Set your global font family here
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Set your global text color here
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
