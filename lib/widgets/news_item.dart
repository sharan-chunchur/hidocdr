import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsItem extends StatelessWidget {
  final dynamic newsItemData;
  final bool isWeb;

  const NewsItem({Key? key, required this.newsItemData, required this.isWeb}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget heading = Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
      child: Text(
        'News',
        style: Theme
            .of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );

    Widget title = Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
      child: Text(newsItemData['title'],
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: Theme
              .of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(
              color: Colors.black, fontWeight: FontWeight.normal)),
    );

    Widget image = Image.network(
      newsItemData['urlToImage'],
      fit: BoxFit.fitHeight,
      errorBuilder: (BuildContext context, Object exception,
          StackTrace? stackTrace) {
        return Image.asset('assets/images/placeHolderImage.jpg', fit: BoxFit.fitHeight);
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,),
      child: InkWell(
          onTap: () async {
            String url = newsItemData['url'];
            Uri uri = Uri.parse(url);
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: isWeb ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading,
                      title,
                    ],
                  ),
                ),
                Expanded(child: image),
              ],
            ) : Column(
              children: [
                heading,
                title,
                Expanded(child: image),
              ],
            ),
      ),
    );
  }
}
