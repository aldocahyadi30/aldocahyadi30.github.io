import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class BlackButton extends StatefulWidget {
  final String name;
  final void Function() onButtonPressed;

  const BlackButton(
      {Key? key, required this.name, required this.onButtonPressed})
      : super(key: key);

  @override
  State<BlackButton> createState() => _BlackButtonState();
}

class _BlackButtonState extends State<BlackButton> {
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
          backgroundColor: WebColors.blackPrimary,
          foregroundColor: WebColors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
        ),
        child: Text(
          widget.name,
          style: const TextStyle(
            color: WebColors.yellow,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
