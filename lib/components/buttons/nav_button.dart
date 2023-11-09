import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class NavButton extends StatefulWidget {
  final String name;
  final int index;
  final bool isActive;
  final void Function(int) onButtonPressed;
  const NavButton(
      {Key? key,
      required this.name,
      required this.index,
      required this.isActive,
      required this.onButtonPressed})
      : super(key: key);

  @override
  State<NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.ease,
      decoration: BoxDecoration(
        border: (isHovered || widget.isActive)
            ? const Border(
                bottom: BorderSide(
                  color: WebColors.yellow,
                  width: 2.0,
                ),
              )
            : null,
      ),
      child: TextButton(
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
          onPressed: () {
            widget.onButtonPressed(widget.index);
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.hovered)) {
                  return WebColors.blackPrimary.withOpacity(0.01);
                } // Change this to your desired overlay color
                return null; // Use the component's default.
              },
            ),
          ),
          child: Text(
            widget.name,
            style: const TextStyle(
              color: WebColors.white,
              fontSize: 20.0,
            ),
          )),
    );
  }
}
