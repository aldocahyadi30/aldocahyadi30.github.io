import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class AboutMe1 extends StatelessWidget {
  const AboutMe1({Key? key}) : super(key: key);

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
      child: const Column(
        children: [
          Text(
            "Hello, I'm Aldo Octavio Cahyadi a full-stack programmer from Surabaya, Indonesia. I am a hardworking, passionate, and self-motivated individual with a strong passion for learning and a drive to explore new technologies and concepts.",
            style: TextStyle(fontSize: 18.0, color: WebColors.white),
          ),
          SizedBox(height: 20.0),
          Text(
            "Currently i'm a 7th Semester Computer Science student at Petra Christian University and i'm also an intern at PT. Avia Avian as a fullstack web developer. I have a strong interest in web development and mobile development. I'm also a fast learner and I am always eager to learn new things.",
            style: TextStyle(fontSize: 18.0, color: WebColors.white),
          ),
        ],
      ),
    );
  }
}
