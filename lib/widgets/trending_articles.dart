import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TrendingArticles extends StatelessWidget {
  final List<dynamic> trendingArticlesData;

  const TrendingArticles({Key? key, required this.trendingArticlesData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return trendingArticlesData.isEmpty
        ? const Text('No data available')
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () async {
                    String url = trendingArticlesData[0]['redirectLink'];
                    Uri uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(uri);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Column(
                    children: [
                      Container(
                          width: double.infinity,
                          height: 200,
                          color: Colors.black45,
                          child: Image.network(
                            trendingArticlesData[0]['articleImg'],
                            fit: BoxFit.cover,
                            errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                              return Image.asset('assets/images/placeHolderImage.jpg');
                            },
                          ),
                          ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(trendingArticlesData[0]['articleTitle'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
                if (trendingArticlesData.length >= 2)
                  InkWell(
                    onTap: () async {
                      String url = trendingArticlesData[1]['redirectLink'];
                      Uri uri = Uri.parse(url);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.black45,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 120,
                                child: Image.network(
                                  trendingArticlesData[1]['articleImg'],
                                  fit: BoxFit.cover,
                                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                                    return Image.asset('assets/images/placeHolderImage.jpg');
                                  },
                                ),
                                // FadeInImage(
                                //   image: NetworkImage(trendingArticlesData[1]['articleImg']),
                                //   fit: BoxFit.cover,
                                //   placeholder: const AssetImage(
                                //       'assets/images/placeHolderImage.jpg'),
                                // ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          trendingArticlesData[1]
                                              ['articleTitle'],
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color: Colors.black,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                if (trendingArticlesData.length >= 3) ...[
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black45,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(trendingArticlesData[2]['articleTitle'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.normal)),
                  ),
                ]
              ],
            ),
          );
  }
}
