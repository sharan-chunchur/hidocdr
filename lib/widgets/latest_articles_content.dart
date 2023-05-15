import 'package:flutter/material.dart';

import 'latest_articles.dart';


class LatestArticlesContent extends StatelessWidget {
  const LatestArticlesContent({
    super.key,
    required this.responseData,
  });

  final dynamic responseData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black45)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'Latest Articles',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          for (dynamic latestArticles in responseData['data']
          ['exploreArticle'])
            LatestArticles(latestArticlesData: latestArticles),
        ],
      ),
    );
  }
}
