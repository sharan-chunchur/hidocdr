import 'dart:async';
import 'package:flutter/material.dart';

class Slideshow extends StatefulWidget {
  final List<Widget> children;

  const Slideshow({Key? key, required this.children}) : super(key: key);

  @override
  SlideshowState createState() => SlideshowState();
}

class SlideshowState extends State<Slideshow> {
  late final PageController _controller;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    Timer.periodic(const Duration(seconds: 2), (Timer timer) {
      if (_currentPage < widget.children.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: widget.children,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
