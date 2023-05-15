 import 'package:flutter/material.dart';

import 'explore_articles.dart';


 class ExploreArticlesContent extends StatelessWidget {

   final dynamic responseData;
   const ExploreArticlesContent({
     super.key,
     required this.responseData,
   });


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
               'Eplore More Articles',
               style: Theme.of(context)
                   .textTheme
                   .titleLarge
                   ?.copyWith(
                   color: Colors.black,
                   fontWeight: FontWeight.bold),
             ),
           ),
           for (dynamic exploreArticle in responseData['data']
           ['exploreArticle'])
             ExploreArticleItem(
               exploreArticlesData: exploreArticle,
             ),
         ],
       ),
     );
   }
 }
