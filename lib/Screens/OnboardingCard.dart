import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_unity_app/Components/ImageBuilder.dart';

PageViewModel onboardingCard(
    {String title, String image, BuildContext context}) {
  return (PageViewModel(
    title: '',
    bodyWidget: Container(
      height: MediaQuery.of(context).size.height / 1.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              "Inspirit",
              style: TextStyle(
                fontSize: 42,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            height: MediaQuery.of(context).size.height * 1.75 / 3,
            child: Column(
              children: [
                Expanded(child: imageBuilder(image)),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  ));
}
