import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

void showMyDialog(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: WebColors.blackPrimary,
        title: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the left
          children: [
            Text(
              title,
              style: const TextStyle(
                  color: WebColors.yellow, fontWeight: FontWeight.w500),
            ),
            const Divider(
              // Divider below the title
              color: WebColors.yellow, // Change the color as needed
              thickness: 0.8, // Adjust the thickness as needed
              height: 16.0, // Adjust the height as needed
            ),
          ],
        ),
        content: Text(content, style: const TextStyle(color: WebColors.yellow)),
        actions: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: WebColors.yellow,
                foregroundColor: WebColors.blackPrimary,
                elevation: 4,
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'Ok',
                style: TextStyle(color: WebColors.blackPrimary),
              )),
        ],
      );
    },
  );
}
