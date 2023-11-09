import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class AboutMe2 extends StatelessWidget {
  const AboutMe2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: WebColors.blackSecondary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.5), // Change this to your desired shadow color
            offset:
                const Offset(10.0, 10.0), // Change this to your desired offset
            blurRadius: 0.0, // Change this to your desired blur radius
            spreadRadius: 1.0, // Change this to your desired spread radius
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: const Column(children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 18.0, color: WebColors.yellow),
                  ),
                  Text(
                    "Aldo Octavio Cahyadi",
                    style: TextStyle(fontSize: 18.0, color: WebColors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: TextStyle(fontSize: 18.0, color: WebColors.yellow),
                  ),
                  Text(
                    "21",
                    style: TextStyle(fontSize: 18.0, color: WebColors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Address",
                    style: TextStyle(fontSize: 18.0, color: WebColors.yellow),
                  ),
                  Text(
                    "Surabaya, Indonesia",
                    style: TextStyle(fontSize: 18.0, color: WebColors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(fontSize: 18.0, color: WebColors.yellow),
                  ),
                  Text(
                    "aldocahyadi28@gmail.com",
                    style: TextStyle(fontSize: 18.0, color: WebColors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 20.0),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Experience",
                    style: TextStyle(fontSize: 18.0, color: WebColors.yellow),
                  ),
                  Text(
                    "3 Years",
                    style: TextStyle(fontSize: 18.0, color: WebColors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nationality",
                    style: TextStyle(fontSize: 18.0, color: WebColors.yellow),
                  ),
                  Text(
                    "Indonesia",
                    style: TextStyle(fontSize: 18.0, color: WebColors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
