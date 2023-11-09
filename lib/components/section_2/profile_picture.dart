import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.5), // Change this to your desired shadow color
            offset:
                const Offset(10.0, 10.0), // Change this to your desired offset
            blurRadius: 0.0, // Change this to your desired blur radius
            spreadRadius: 1.0, // Change this to your desired spread radius
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/profile2.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
