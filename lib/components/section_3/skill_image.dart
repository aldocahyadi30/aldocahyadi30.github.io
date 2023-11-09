import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class SkillImage extends StatelessWidget {
  final String name;
  const SkillImage({Key? key, required this.name}) : super(key: key);

  String getImage(String name) {
    switch (name) {
      case 'android-studio':
        return 'assets/images/logo/android-studio.png';
      case 'bootstrap':
        return 'assets/images/logo/bootstrap.png';
      case 'css':
        return 'assets/images/logo/css.png';
      case 'dart':
        return 'assets/images/logo/dart.png';
      case 'figma':
        return 'assets/images/logo/figma.png';
      case 'firebase':
        return 'assets/images/logo/firebase.png';
      case 'flutter':
        return 'assets/images/logo/flutter.png';
      case 'github':
        return 'assets/images/logo/github.png';
      case 'html':
        return 'assets/images/logo/html.png';
      case 'java':
        return 'assets/images/logo/java.png';
      case 'javascript':
        return 'assets/images/logo/javascript.png';
      case 'kotlin':
        return 'assets/images/logo/kotlin.png';
      case 'laravel':
        return 'assets/images/logo/laravel.png';
      case 'mysql':
        return 'assets/images/logo/mysql.png';
      case 'php':
        return 'assets/images/logo/php.png';
      case 'python':
        return 'assets/images/logo/python.png';
      case 'visual-studio-code':
        return 'assets/images/logo/visual-studio-code.png';
      default :
        return 'assets/images/logo/visual-studio-code.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.0,
      width: 64.0,
      decoration: BoxDecoration(
        color: WebColors.blackSecondary,
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
      child: Image.asset(getImage(name)),
    );
  }
}
