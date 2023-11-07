import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'home.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset("assets/images/turtle.png"),
      title: const Text(
        "Movie List",
        style: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color.fromRGBO(218, 206, 229, 1),
      showLoader: true,
      loaderColor: const Color.fromARGB(255, 255, 255, 255),
      loadingText: const Text(
        "Loading...",
        style: TextStyle(color: Colors.white),
      ),
      navigator: const homeScreen(),
      durationInSeconds: 5,
    );
  }
}
