import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String imagePath;

  const ProfileCard({
    super.key,
    required this.name,
    required this.email,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF257CFF),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    height: 1.4,
                    letterSpacing: 0.0,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  email,
                  style: const TextStyle(
                    fontFamily: 'Urbanist',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
