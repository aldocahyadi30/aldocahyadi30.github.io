import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/arrow_down_button.dart';
import 'package:portfolio/components/section_2/about_me_1.dart';
import 'package:portfolio/components/section_2/about_me_2.dart';
import 'package:portfolio/components/section_2/profile_picture.dart';
import 'package:portfolio/themes/color_pallette.dart';

class Section2 extends StatelessWidget {
  final ScrollController scrollController;
  const Section2({Key? key, required this.scrollController}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    void handleArrowButton() {
      scrollController.animateTo(
        2 * MediaQuery.of(context).size.height, // Scroll to the height of Section2
        duration: const Duration(seconds: 1), // You can adjust the duration
        curve: Curves.easeOut, // You can use a different curve
      );
    }

    return Scaffold(
      backgroundColor: WebColors.blackPrimary,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text('About Me',
                  style: TextStyle(
                      color: WebColors.yellow,
                      fontSize: 52.0,
                      fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height: 20.0),
            const Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ProfilePicture(),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Add this line
                    children: [
                      AboutMe1(),
                      SizedBox(height: 20.0),
                      AboutMe2(),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ArrowDownButton(scrollController: scrollController, onButtonPressed: handleArrowButton)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
