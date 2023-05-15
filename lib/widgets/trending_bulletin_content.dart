import 'package:flutter/material.dart';
import 'package:hidocdr/widgets/trending_bulletin_container.dart';


class TrendingBulletinContent extends StatelessWidget {
  const TrendingBulletinContent({
    super.key,
    required this.responseData,
  });

  final dynamic responseData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding:
      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 215, 234, 238),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Trending Hidoc Bulletin',
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          for (dynamic trendingBulletinItem
          in responseData['data']['trandingBulletin'])
            TrendingBulletinItem(
              trendingBulletinData: trendingBulletinItem,
            ),
        ],
      ),
    );
  }
}
