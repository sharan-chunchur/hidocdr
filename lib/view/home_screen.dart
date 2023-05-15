import 'package:flutter/material.dart';
import 'package:hidocdr/widgets/content.dart';
import 'package:hidocdr/widgets/dropdown_button.dart';
import 'package:hidocdr/utils/widgets/home_icon.dart';
import 'package:hidocdr/widgets/title_container.dart';
import '../utils/colors.dart';


import '../utils/circular_painter.dart';
import '../widgets/top_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late bool _isWeb;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      _isWeb = constraints.maxWidth > 600;
      return Scaffold(
          appBar: _isWeb
              ? AppBar(
                  elevation: 1,
                  shadowColor: Colors.grey,
                  centerTitle: true,
                  title: TopMenu(isSpcaceAvalable: constraints.maxWidth > 1204),
                )
              : null,
          body: Stack(
            children: [
              !_isWeb
                  ? Center(
                      child: Column(
                        children: [
                          const CustomCircleWidget(
                            color: circleColor,
                            xCoord: -0.6,
                            yCoord: 0.1,
                          ),
                          CustomCircleWidget(
                            color: circleColor.withOpacity(0.5),
                            xCoord: 1.3,
                            yCoord: 2.5,
                          ),
                        ],
                      ),
                    )
                  : const SizedBox.shrink(),
              !_isWeb
                  ? const Positioned(
                      top: 75,
                      left: 12,
                      child: HomeIcon(),
                    )
                  : const SizedBox.shrink(),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _isWeb ? const SizedBox.shrink() : const TitleContainer(),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Text('ARTICLES',
                            style: Theme.of(context).textTheme.displayLarge),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomDropDownButton(
                              isWeb: _isWeb,
                            ),
                            Content(isWeb: _isWeb,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
