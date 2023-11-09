import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactSvg extends StatelessWidget {
  const ContactSvg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500.0,
      decoration: BoxDecoration(
        color: WebColors.blackPrimary,
        border: Border.all(
          color: WebColors.yellow, // Add this line
          width: 2.0, // You can adjust the width as needed
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
        ),
      ),
      child: SvgPicture.asset('images/contact.svg'),
    );
  }
}
