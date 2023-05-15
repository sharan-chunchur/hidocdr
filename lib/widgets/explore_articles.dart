

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExploreArticleItem extends StatelessWidget {
  final dynamic exploreArticlesData;
  const ExploreArticleItem({Key? key, required this.exploreArticlesData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: InkWell(
        onTap: () async {
          String url = exploreArticlesData['redirectLink'];
          Uri uri= Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width:double.infinity,
              height: 1,
              color: Colors.black45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(exploreArticlesData['articleTitle'], maxLines: 2, overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.normal)),
            ),
          ],
        ),
      ),
    );
  }
}
