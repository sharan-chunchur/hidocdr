import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 3),
      ),
      child: const Center(
        child: Icon(
          Icons.home,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}
