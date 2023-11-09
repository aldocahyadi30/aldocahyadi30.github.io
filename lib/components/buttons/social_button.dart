import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/themes/color_pallette.dart';

class SocialButton extends StatefulWidget {
  final String name;

  const SocialButton(
      {Key? key, required this.name})
      : super(key: key);

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool isHovered = false;

  IconData getIcon(String name) {
    switch (name) {
      case 'github':
        return FontAwesomeIcons.github;
      case 'linkedin':
        return FontAwesomeIcons.linkedinIn;
      case 'facebook':
        return FontAwesomeIcons.facebook;
      case 'instagram':
        return FontAwesomeIcons.instagram;
      default:
        return Icons.error;
    }
  }

  Uri getUrl(String name) {
    switch (name) {
      case 'github':
        return Uri.parse('https://github.com/aldocahyadi30');
      case 'linkedin':
        return Uri.parse('https://www.linkedin.com/in/aldo-cahyadi-b649bb250/');
      case 'facebook':
        return Uri.parse('https://www.facebook.com/aldo.octaviocahyadi.5');
      case 'instagram':
        return Uri.parse('https://www.instagram.com/aldooctavio_/?hl=en');
      default:
        return Uri.parse('');
    }
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(getUrl(widget.name))) {
      throw Exception('Could not launch ${getUrl(widget.name)}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        isHovered = true;
      }),
      onExit: (_) => setState(() {
        isHovered = false;
      }),
      child: IconButton(
        onPressed: () {
          _launchUrl();
        },
        icon: Icon(getIcon(widget.name)),
        iconSize: 32.0,
        color: isHovered ? WebColors.yellow : WebColors.white,
      ),
    );
  }
}
