import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class LoadingButton extends StatefulWidget {
  final String name;
  final Future<void> Function() onButtonPressed;

  const LoadingButton(
      {Key? key,
      required this.name,
      required this.onButtonPressed})
      : super(key: key);

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool isLoading = false; // Moved isLoading to the state class

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.0,
      width: 200.0,
      child: ElevatedButton(
        onPressed: () async {
          setState(() {
            isLoading = true; // Set isLoading to true when the button is pressed
          });
          await widget.onButtonPressed();
          setState(() {
            isLoading = false; // Set isLoading back to false when the function is done
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: WebColors.blackPrimary,
          foregroundColor: WebColors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 4,
        ),
        child: isLoading
            ? Container(
                width: 24,
                height: 24,
                padding: const EdgeInsets.all(2.0),
                child: const CircularProgressIndicator(
                  color: WebColors.yellow,
                  strokeWidth: 3,
                ),
              )
            : Text(
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
