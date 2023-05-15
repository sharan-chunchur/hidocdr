import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';

class VisitContent extends StatelessWidget {
  final bool isWeb;

  const VisitContent({
    super.key, required  this.isWeb,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      width: double.infinity,
      alignment: Alignment.center,
      decoration:
      BoxDecoration(color: isWeb ? const Color.fromARGB(255, 215, 234, 238) : circleColor),
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Social Network for doctors - A Special feature on Hidoc Dr.',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(
                  fontSize: isWeb? 30 : 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: ElevatedButton(
              onPressed: () async {
                String url = 'https://hidoc.co/';
                Uri uri = Uri.parse(url);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri);
                } else {
                  throw 'Could not launch $url';
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: isWeb ? const Color.fromARGB(255, 0, 187, 212) : Colors.orangeAccent,
                  foregroundColor: Colors.white),
              child: const Text(
                'Visit',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize:  20),
              ),
            ),
          )
        ],
      ),
    );
  }
}
