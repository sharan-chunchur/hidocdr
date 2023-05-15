import 'package:flutter/material.dart';

class TitleContainer extends StatelessWidget {
  const TitleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 207, 240, 245),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft:  Radius.circular(15)),
      ),
      child: Text('hidoc', style:Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.white),),
    );
  }
}
