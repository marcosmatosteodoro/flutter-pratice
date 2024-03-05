import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  final Color colorIcon;

  const InfoCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.colorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(icon, color: colorIcon, size: 40),
            const SizedBox(width: 20.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xFF191A26),
                      fontFamily: 'Urbanist',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      color: Color(0xFF808D9E),
                      fontFamily: 'Urbanist',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Color(0xFF808D9E)),
          ],
        ),
      ),
    );
  }
}
