import 'package:flutter/material.dart';

class TopArticle extends StatelessWidget {
  final bool isWeb;

  const TopArticle({Key? key, required this.isWeb}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset(
      'assets/images/placeHolderImage.jpg',
    );

    Widget title = Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        ' the Nexus Criteria for Critical Care: A Comprehensive Guide',
        style: Theme.of(context).textTheme.displaySmall,
      ),
    );

    Widget description = const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
          'The Nexus Criteria has been used by healthcare professionals to determine whether patient needs  critical care or not.'),
    );

    Widget link = GestureDetector(
      onTap: () {},
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Read full Article to earn points',
          style: TextStyle(
            color: Color.fromARGB(255, 0, 187, 212),
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );

    Widget points = Container(
      padding: const EdgeInsets.all(8),
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: !isWeb
            ? BorderRadius.only(bottomRight: Radius.circular(25))
            : BorderRadius.only(topLeft: Radius.circular(25)),
        color: Color.fromARGB(255, 0, 187, 212),
      ),
      child: Column(
        children: const [
          Text(
            'Points',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            '2',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );

    return !isWeb
        ? Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                  child: image,
                ),
                title,
                description,
                Row(
                  children: [
                    Expanded(child: link),
                    points,
                  ],
                )
              ],
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    image,
                    Positioned(
                      bottom: 0,
                      right: 0,
                        child: points,),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title,
                    description,
                    link,
                  ],
                ),
              )
            ],
          );
  }
}
