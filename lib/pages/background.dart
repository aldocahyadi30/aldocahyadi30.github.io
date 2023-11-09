import 'package:flutter/material.dart';
import 'package:portfolio/components/section_4/background_card.dart';
import 'package:portfolio/themes/color_pallette.dart';
import 'package:timelines/timelines.dart';

class Background extends StatefulWidget {
  const Background({Key? key}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  final List<String> organization = ['Taruna', 'UKP', 'Avian'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WebColors.blackPrimary,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Background',
              style: TextStyle(
                  color: WebColors.yellow,
                  fontSize: 52.0,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: SingleChildScrollView(
                child: FixedTimeline.tileBuilder(
                  theme: TimelineThemeData(
                      color: WebColors.yellow,
                      indicatorTheme: const IndicatorThemeData(
                        size: 20.0,
                      ),
                      connectorTheme: const ConnectorThemeData(
                        thickness: 5.0,
                      )),
                  builder: TimelineTileBuilder.connectedFromStyle(
                    contentsAlign: ContentsAlign.alternating,
                    contentsBuilder: (context, index) => SizedBox(
                      height: 175.0,
                      width: 600.0,
                      child: Card(
                        elevation: 8,
                        color: WebColors.grayPrimary,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                              BackgroundCard(organization: organization[index]),
                        ),
                      ),
                    ),
                    connectorStyleBuilder: (context, index) =>
                        ConnectorStyle.solidLine,
                    indicatorStyleBuilder: (context, index) =>
                        IndicatorStyle.outlined,
                    itemCount: organization.length,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
