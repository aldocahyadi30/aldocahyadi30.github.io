import 'package:flutter/material.dart';
import 'package:portfolio/components/section_3/skill_image.dart';
import 'package:portfolio/themes/color_pallette.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: WebColors.blackPrimary,
      body: Padding(
        padding: EdgeInsets.only(bottom : 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What I Use',
                style: TextStyle(
                    color: WebColors.yellow,
                    fontSize: 52.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 20.0),
            Text('Language',
                style: TextStyle(
                    color: WebColors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 30.0),
            Row(
              children: [
                SkillImage(name: 'html'),
                SizedBox(width: 20.0),
                SkillImage(name: 'css'),
                SizedBox(width: 20.0),
                SkillImage(name: 'javascript'),
                SizedBox(width: 20.0),
                SkillImage(name: 'php'),
                SizedBox(width: 20.0),
                SkillImage(name: 'python'),
                SizedBox(width: 20.0),
                SkillImage(name: 'java'),
                SizedBox(width: 20.0),
                SkillImage(name: 'kotlin'),
                SizedBox(width: 20.0),
                SkillImage(name: 'dart'),
              ],
            ),
            SizedBox(height: 40.0),
            Text('Library & Framework',
                style: TextStyle(
                    color: WebColors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 30.0),
            Row(
              children: [
                SkillImage(name: 'laravel'),
                SizedBox(width: 20.0),
                SkillImage(name: 'bootstrap'),
                SizedBox(width: 20.0),
                SkillImage(name: 'flutter'),
              ],
            ),
            SizedBox(height: 40.0),
            Text('Tool',
                style: TextStyle(
                    color: WebColors.white,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500)),
            SizedBox(height: 30.0),
            Row(
              children: [
                SkillImage(name: 'visual-studio-code'),
                SizedBox(width: 20.0),
                SkillImage(name: 'andropoid-studio'),
                SizedBox(width: 20.0),
                SkillImage(name: 'figma'),
                SizedBox(width: 20.0),
                SkillImage(name: 'github'),
                SizedBox(width: 20.0),
                SkillImage(name: 'firebase'),
                SizedBox(width: 20.0),
                SkillImage(name: 'mysql'),
                SizedBox(width: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
