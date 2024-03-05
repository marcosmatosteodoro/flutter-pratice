import 'package:flutter/material.dart';

class SubTitleText extends StatelessWidget {
  final String title;

  const SubTitleText({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: 'Urbanist',
        fontSize: 16.0,
        fontWeight: FontWeight.w700,
        color: Color(0xFF808D9E),
        letterSpacing: 0.0,
      ),
    );
  }
}
