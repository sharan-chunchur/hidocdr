import 'package:flutter/material.dart';

class LoadingError extends StatelessWidget {
  final Future<void> Function() apiCall;

  const LoadingError({Key? key, required this.apiCall}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text('Please check your internet Connection',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          GestureDetector(
            onTap: () async {
              await apiCall();
            },
            child : const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
