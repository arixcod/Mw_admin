import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';




class InfoCard extends StatelessWidget {
  final String icon;
  final String title;
  final String assetName;
  final String subtitle;
  final Color color;

  InfoCard({
    required this.icon,
    required this.assetName,
    required this.title,
    required this.subtitle,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
            SvgPicture.asset(
              assetName,
            ),
            Positioned(
              top: 16,
              bottom: 22,
              left: 22,
              right: 22,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  icon,
                ),
              ),
            ),
          ]),
          
          Text(
              textAlign: TextAlign.center,
              "$title $subtitle",
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}