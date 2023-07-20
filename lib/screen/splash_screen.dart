import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/screen/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/mytheme.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 1000));
    _animation = CurvedAnimation(parent: _animationController, curve: Curves.bounceOut, reverseCurve: Curves.bounceIn);
    _animationController.forward();
    super.initState();
    splashscreenstart();
  }

  splashscreenstart() async{
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      backgroundColor: MyTheme.splash,
      body: Container(
        child: Center(
          child: ScaleTransition(
            scale: _animation,
            child: SvgPicture.asset(
              "assets/logo2.svg",
              height: 500,
              width: 500,
            ),
          ),
        ),
      ),
    );
  }
}