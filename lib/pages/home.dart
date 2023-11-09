import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'package:portfolio/components/buttons/nav_button.dart';
import 'about.dart';
import 'background.dart';
import 'contact.dart';
import 'portfolio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int currentPageIndex = 1;

  final About aboutScreen = const About();
  final Background backgroundScreen = const Background();
  final Contact contactScreen = const Contact();
  final Portfolio portfolioScreen = const Portfolio();

  void handleButtonPressed(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.blackPrimary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: WebColors.graySecondary,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () {
                handleButtonPressed(0);
              },
              child: Container(
                padding: const EdgeInsets.only(left: 48.0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: '<',
                          style: TextStyle(
                            color: WebColors.yellow,
                            fontWeight: FontWeight.w500,
                          )),
                      TextSpan(
                          text: 'AOC',
                          style: TextStyle(
                              color: WebColors.white,
                              fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: '>',
                          style: TextStyle(
                              color: WebColors.yellow,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              )),
        ),
        actions: [
          NavButton(
            name: 'Home',
            index: 0,
            isActive: currentPageIndex == 0,
            onButtonPressed: (index) {
              handleButtonPressed(index);
            },
          ),
          NavButton(
            name: 'Background',
            index: 1,
            isActive: currentPageIndex == 1,
            onButtonPressed: (index) {
              handleButtonPressed(index);
            },
          ),
          NavButton(
            name: 'Portfolio',
            index: 2,
            isActive: currentPageIndex == 2,
            onButtonPressed: (index) {
              handleButtonPressed(index);
            },
          ),
          Container(
              padding: const EdgeInsets.only(right: 48.0),
              child: NavButton(
                name: 'Contact',
                index: 3,
                isActive: currentPageIndex == 3,
                onButtonPressed: (index) {
                  handleButtonPressed(index);
                },
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 160),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: IndexedStack(
            index: currentPageIndex,
            children: [
              aboutScreen,
              backgroundScreen,
              portfolioScreen,
              contactScreen,
            ],
          ),
        ),
      ),
    );
  }
}
