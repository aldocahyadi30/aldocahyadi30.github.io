import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArrowDownButton extends StatefulWidget {
  final ScrollController scrollController;
  final void Function() onButtonPressed;

  const ArrowDownButton(
      {Key? key, required this.scrollController, required this.onButtonPressed})
      : super(key: key);

  @override
  State<ArrowDownButton> createState() => _ArrowDownButtonState();
}

class _ArrowDownButtonState extends State<ArrowDownButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0, end: 20).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget? child) {
        return Transform.translate(
          offset: Offset(0, _animation.value), // Use the animation's value here
          child: child,
        );
      },
      child: IconButton(
        icon: const FaIcon(FontAwesomeIcons.arrowDownLong),
        color: WebColors.yellow,
        iconSize: 32.0,
        onPressed: () {
          widget.onButtonPressed();
        },
      ),
    );
  }
}
