import 'package:flutter/material.dart';
import 'package:flutter_unity_app/Screens/OnboardingCard.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return (IntroductionScreen(
      pages: [
        onboardingCard(
          title:
              "Easily find your grocery items and you will get delivery in wide range",
          image: 'onboarding1',
          context: context,
        ),
        onboardingCard(
          title:
              'We make ordering fast, simple and free-no matter if you order online or cash',
          image: 'onboarding2',
          context: context,
        ),
        onboardingCard(
          title: 'Pay for order using credit or debit card',
          image: 'onboarding3',
          context: context,
        )
      ],
      onDone: () => print("ON-DONE"),
      done: Text(
        "DONE",
        style: TextStyle(color: Colors.white),
      ),
      dotsDecorator: DotsDecorator(
        size: Size.square(15),
        activeSize: Size.square(15),
        color: Colors.transparent,
        activeColor: Colors.white,
        shape: CircleBorder(
          side: BorderSide(width: 1, color: Colors.white),
        ),
      ),
      globalBackgroundColor: Color(0xff6800fa),
      showSkipButton: true,
      // skip: MaterialButton(
      //   child: Text("SKIP"),
      //   onPressed: () => print("Skipped"),
      //   textColor: Colors.white,
      // ),
      skip: Text(
        "SKIP",
        style: TextStyle(color: Colors.white),
      ),
    ));
  }
}
