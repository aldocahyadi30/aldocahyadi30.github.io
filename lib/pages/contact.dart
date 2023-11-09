import 'package:flutter/material.dart';
import 'package:portfolio/components/section_6/contact_form.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'package:portfolio/components/section_6/contact_svg.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.blackPrimary,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact',
              style: TextStyle(
                  color: WebColors.yellow,
                  fontSize: 52.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: ContactSvg(),
                ),
                Expanded(
                  flex: 6,
                  child: ContactForm(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
