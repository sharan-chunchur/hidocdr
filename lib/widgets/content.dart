import 'package:flutter/material.dart';
import 'package:hidocdr/widgets/top_article.dart';
import 'package:hidocdr/widgets/trending_articles_content.dart';
import 'package:hidocdr/widgets/trending_bulletin_content.dart';
import 'package:hidocdr/widgets/visit_content.dart';

import '../services/api_connect.dart';
import '../utils/widgets/loading_error.dart';
import 'bulletin_content.dart';
import 'circular_icon.dart';
import 'explore_articles_content.dart';
import 'footer.dart';
import 'latest_articles_content.dart';
import 'news_content.dart';

class Content extends StatefulWidget {
  final bool isWeb;

  const Content({Key? key, required this.isWeb}) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  dynamic responseData;
  var _loading = false;
  dynamic objApi = ApiConnect();

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    setState(() {
      _loading = true;
    });
    responseData = await objApi.connectToDoc();
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? const Center(child: CircularProgressIndicator())
        : responseData == null
            ? LoadingError(apiCall: _getData)
            : Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: widget.isWeb ? 100 : 16,
                        top: 8.0,
                        right: widget.isWeb ? 100 : 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopArticle(isWeb: widget.isWeb,),
                        widget.isWeb
                            ? Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                      child: BulletinContent(
                                          responseData: responseData)),
                                  Expanded(
                                      child: TrendingBulletinContent(
                                          responseData: responseData)),
                                ],
                              )
                            : Column(
                                children: [
                                  BulletinContent(responseData: responseData),
                                  TrendingBulletinContent(
                                      responseData: responseData),
                                ],
                              ),
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(
                                top: 8, left: 32, right: 32, bottom: 16),
                            width: widget.isWeb ? 600 : double.infinity,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: widget.isWeb
                                  ? const Color.fromARGB(255, 0, 187, 212)
                                  : Colors.orange,
                            ),
                            child: Text(
                              'Read More Bullentins',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            widget.isWeb
                                ? Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              margin: const EdgeInsets.only(
                                                  right: 8),
                                              child: LatestArticlesContent(
                                                  responseData: responseData))),
                                      Expanded(
                                          child: Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: TrendingArticlesContent(
                                            responseData: responseData),
                                      )),
                                      Expanded(
                                          child: Column(
                                        children: [
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 8),
                                            child: ExploreArticlesContent(
                                                responseData: responseData),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                top: 8,
                                                left: 32,
                                                right: 32,
                                                bottom: 16),
                                            width: double.infinity,
                                            height: 50,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: widget.isWeb
                                                  ? const Color.fromARGB(
                                                      255, 0, 187, 212)
                                                  : Colors.orange,
                                            ),
                                            child: Text(
                                              'Explore Hidoc Dr',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                      color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      )),
                                    ],
                                  )
                                : Column(
                                    children: [
                                      LatestArticlesContent(
                                          responseData: responseData),
                                      TrendingArticlesContent(
                                          responseData: responseData),
                                      ExploreArticlesContent(
                                          responseData: responseData),
                                    ],
                                  )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: widget.isWeb ? Colors.white : null,
                    padding: const EdgeInsets.only(top: 32, bottom: 16),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: widget.isWeb ? 100 : 16,
                          top: 8.0,
                          right: widget.isWeb ? 100 : 16),
                      child: Text(
                        'What\'s more on Hidoc Dr',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    color: widget.isWeb ? Colors.white : null,
                    padding: EdgeInsets.only(
                        left: widget.isWeb ? 100 : 16,
                        top: 8.0,
                        right: widget.isWeb ? 100 : 16),
                    child: LayoutBuilder(builder: (context, constraints){
                      return constraints.maxWidth > 1232 ? Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                  margin: const EdgeInsets.only(right: 8),
                                  child: NewsContent(
                                      isWeb: widget.isWeb,
                                      responseData: responseData))),
                          Expanded(
                              flex: 1,
                              child: Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  child: const ActivityContent())),
                        ],
                      )
                          : Column(
                        children: [
                          NewsContent(
                            responseData: responseData,
                            isWeb: widget.isWeb,
                          ),
                          const ActivityContent(),
                        ],
                      );
                    },)
                  ),
                  Container(
                    color: widget.isWeb ? Colors.white : null,
                    padding: EdgeInsets.only(
                          left: widget.isWeb ? 100 : 16,
                          top: 8.0,
                          right: widget.isWeb ? 100 : 16),
                      child: VisitContent(isWeb: widget.isWeb),
                  ),
                  Footer(
                    isWeb: widget.isWeb,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      children: const [
                        Text('© Copyright 2022 Infedis Infotech LLP.'),
                        Text('Terms & Conditions | Privacy Policy')
                      ],
                    )
                  ),
                ],
              );
  }
}
