import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'about/section_1.dart';
import 'about/section_2.dart';
import 'about/section_3.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WebColors.blackPrimary,
        body: ListView(
          controller: _scrollController,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Section1(scrollController: _scrollController)
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Section2(scrollController: _scrollController)
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Section3()
            )
          ],
        )
    );
  }
}