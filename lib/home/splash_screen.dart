import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_app_sangeet/sign_up_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    super.key,
  });

  void navigateToHome(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const SignUpScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () => navigateToHome(context));

    return  const Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Image(
          image: AssetImage('lib/assets/IndianClassical.png'),
        ),
      ),
    );
  }
}
