import 'package:flutter/material.dart';
import 'package:portfolio/themes/color_pallette.dart';

class BackgroundCard extends StatelessWidget {
  final String organization;
  BackgroundCard({Key? key, required this.organization}) : super(key: key);

  final Map<String, List<dynamic>> organizationData = {
    'Taruna': [
      'Taruna Jaya',
      'Senior Highschool',
      'Social Science Major',
      '2017 - 2020',
      'assets/images/tj.png'
    ],
    'UKP': [
      'Universitas Kristen Petra',
      'Bachelor Degree',
      'Computer Science',
      '2020 - Present',
      'assets/images/ukp.png'
    ],
    'Avian': [
      'PT. Avia Avian',
      'Internship',
      'Website Developer',
      '2021 - Present',
      'assets/images/avian.png'
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                // height: 24.0,
                // width: 8.0,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: WebColors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Image.asset(organizationData[organization]![4]),),
              )
        ),
        Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    organizationData[organization]![0],
                    style: const TextStyle(
                      color: WebColors.yellow,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    organizationData[organization]![1],
                    style: const TextStyle(
                      color: WebColors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    organizationData[organization]![2],
                    style: const TextStyle(
                      color: WebColors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  const Divider(
                    color: WebColors.white,
                    thickness: 2.0,
                  ),
                  Text(
                    organizationData[organization]![3],
                    style: const TextStyle(
                      color: WebColors.white,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
