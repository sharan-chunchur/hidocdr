
import 'package:flutter/material.dart';
import 'package:hidocdr/widgets/slide_show.dart';

import 'news_item.dart';

class NewsContent extends StatelessWidget {
  final dynamic responseData;
  final bool isWeb;
  const NewsContent({
    super.key,
    required this.responseData, required this.isWeb,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: double.infinity,
      height: isWeb ? 300 : 500,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black45),
        color: const Color.fromARGB(255, 235, 235, 235).withOpacity(0.5),
      ),
      child: Slideshow(children: List.generate(
        responseData['data']['news'].length,
            (index) => NewsItem(newsItemData: responseData['data']['news'][index], isWeb: isWeb),
      ),),
    );
  }
}
