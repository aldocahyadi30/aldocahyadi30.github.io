import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({ Key? key }) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WebColors.blackPrimary,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: const Center(
            child: Text('Portfolio'),
          ),
        )
    );
  }
}