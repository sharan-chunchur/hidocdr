import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'circle_icon.dart';

class FeaturesFooterItem extends StatefulWidget {
  final Color containerColor;
  final String label;
  final Color labelColor;
  final String iconPath;

  const FeaturesFooterItem(
      {super.key,
      required this.containerColor,
      required this.label,
      required this.labelColor, required this.iconPath});

  @override
  State<FeaturesFooterItem> createState() => _FeaturesFooterItemState();
}

class _FeaturesFooterItemState extends State<FeaturesFooterItem> {

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: widget.containerColor,
          border: Border.all(width: 1, color: Colors.grey)
        ),
        child: Column(
          children: [
            CircleIcon(
              circleColor: widget.labelColor,
              borderColor: Colors.white,
              child: SvgPicture.asset(
                widget.iconPath,
                width: 20,
                height: 20,
                color: Colors.white,
              ),
            ),
            Text(
              widget.label,
              style: TextStyle(color: widget.labelColor),
            ),
          ],
        ),
      ),
    );
  }
}
