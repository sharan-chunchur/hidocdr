import 'package:flutter/material.dart';

import 'bulletin_container.dart';


class BulletinContent extends StatelessWidget {
  final dynamic responseData;
  const BulletinContent({
    super.key,
    required this.responseData,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            'Hidoc Bulletin',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
        for (dynamic bulletinItem in responseData['data']['bulletin'])
          BulletinContainer(bulletinData: bulletinItem),
      ],
    );
  }
}
