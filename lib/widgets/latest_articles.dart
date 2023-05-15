import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LatestArticles extends StatelessWidget {
  final dynamic latestArticlesData;
  const LatestArticles({Key? key, required this.latestArticlesData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
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
            child: Text(latestArticlesData['articleTitle'], maxLines: 2, overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.black, fontWeight: FontWeight.normal)),
          ),
          GestureDetector(
              onTap: () async {
                String url = latestArticlesData['redirectLink'];
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
      ),
    );
  }
}
