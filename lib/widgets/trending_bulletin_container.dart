import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrendingBulletinItem extends StatelessWidget {
  final dynamic trendingBulletinData;

  const TrendingBulletinItem({Key? key, required this.trendingBulletinData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(trendingBulletinData['articleTitle'],
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(trendingBulletinData['articleDescription'],
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        GestureDetector(
            onTap: () async {
              String url = trendingBulletinData['redirectLink'];
              Uri uri= Uri.parse(url);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri);
              } else {
                throw 'Could not launch $url';
              }
            },
            child: const Text(
              'Read More',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 187, 212),
              ),
            ))
      ],
    );
  }
}
