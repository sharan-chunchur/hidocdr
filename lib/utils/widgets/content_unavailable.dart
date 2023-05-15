import 'package:flutter/material.dart';

class ContentUnavailable extends StatelessWidget {
  final Future<void> Function() apiCall;

 const ContentUnavailable({Key? key, required this.apiCall}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Articles Available.',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
