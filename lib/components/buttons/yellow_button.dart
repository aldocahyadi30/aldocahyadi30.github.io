import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class YellowButton extends StatefulWidget {
  final String name;
  final void Function() onButtonPressed;

  const YellowButton(
      {Key? key, required this.name, required this.onButtonPressed})
      : super(key: key);

  @override
  State<YellowButton> createState() => _YellowButtonState();
}

class _YellowButtonState extends State<YellowButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.0,
      width: 200.0,
      child: ElevatedButton(
        onPressed: () {
          widget.onButtonPressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: WebColors.yellow,
          foregroundColor: WebColors.blackPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
        ),
        child: Text(
          widget.name,
          style: const TextStyle(
            color: WebColors.blackPrimary,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
