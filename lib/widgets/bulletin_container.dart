import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BulletinContainer extends StatelessWidget {
  final dynamic bulletinData;

  const BulletinContainer({Key? key, required this.bulletinData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8),
          width: MediaQuery.of(context).size.width / 3 - 8,
          height: 8,
          color: const Color.fromARGB(255, 0, 187, 212),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(bulletinData['articleTitle'],
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(bulletinData['articleDescription'],
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyMedium),
        ),
        GestureDetector(
          onTap: () async {
            String url = bulletinData['redirectLink'];
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
