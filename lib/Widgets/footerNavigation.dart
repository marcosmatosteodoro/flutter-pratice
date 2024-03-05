import 'package:flutter/material.dart';

class FooterNavigation extends StatelessWidget {
  const FooterNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.message),
          ),
          IconButton(
            onPressed: () {},
            icon: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
