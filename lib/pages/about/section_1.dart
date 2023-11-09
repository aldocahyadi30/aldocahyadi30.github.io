import 'package:flutter/material.dart';
import 'package:portfolio/components/buttons/arrow_down_button.dart';
import 'package:portfolio/components/buttons/black_button.dart';
import 'package:portfolio/components/buttons/social_button.dart';
import 'package:portfolio/components/buttons/yellow_button.dart';
import 'package:portfolio/themes/color_pallette.dart';


class Section1 extends StatelessWidget {
  final ScrollController scrollController;
  const Section1({Key? key, required this.scrollController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void handlePortfolionButton() {
      print('Portfolio button pressed');
    }

    void handleCVButton() {
      print('CV button pressed');
    }

    void handleArrowButton() {
      scrollController.animateTo(
        MediaQuery.of(context).size.height, // Scroll to the height of Section2
        duration: const Duration(seconds: 1), // You can adjust the duration
        curve: Curves.easeOut, // You can use a different curve
      );
    }

    return Scaffold(
      backgroundColor: WebColors.blackPrimary,
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0, bottom: 80.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2, // This represents 2/3 of the available space
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Add this line
                    children: [
                      const Text(
                        "I'm Aldo Cahyadi",
                        style: TextStyle(
                          color: WebColors.yellow,
                          fontSize: 52.0,
                          fontWeight: FontWeight.w500,
                          height: 0.8, // Add this line
                        ),
                      ),
                      // SizedBox(height: 10.0), //
                      const Text(
                        "Fullstack Developer",
                        style: TextStyle(
                          color: WebColors.white,
                          fontSize: 52.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text(
                          "I'm a passionate full-stack developer. Here, you'll find a showcase of my projects, demonstrating my proficiency in both front-end and back-end development. Explore my work below and feel free to get in touch.",
                          style: TextStyle(
                            color: WebColors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          YellowButton(
                            name: 'My Portfolio',
                            onButtonPressed: handlePortfolionButton,
                          ),
                          const SizedBox(width: 10.0),
                          BlackButton(
                            name: 'My CV',
                            onButtonPressed: handleCVButton,
                          ),
                        ],
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Divider(
                          color: WebColors.yellow,
                          thickness: 1.0,
                          endIndent: 40,
                        ),
                      ),

                      const Row(
                        children: [
                          SocialButton(
                              name: 'linkedin'),
                          SizedBox(width: 10.0),
                          SocialButton(
                              name: 'github'),
                          SizedBox(width: 10.0),
                          SocialButton(
                              name: 'instagram'),
                          SizedBox(width: 10.0),
                          SocialButton(
                              name: 'facebook'),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1, // This represents 1/3 of the available space
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 380.0,
                      width: 380.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: WebColors.yellow,
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 360.0,
                          width: 360.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: WebColors.yellow,
                              width: 2.0,
                            ),
                          ),
                          child: ClipOval(
                            child: Image.asset('assets/images/profile.jpg'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ArrowDownButton(
                    scrollController: scrollController,
                    onButtonPressed: handleArrowButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
