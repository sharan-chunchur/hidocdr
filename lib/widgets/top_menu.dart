import 'package:flutter/material.dart';

import 'circle_icon.dart';

class TopMenu extends StatefulWidget {
  final bool isSpcaceAvalable;
  const TopMenu({
    super.key, required this.isSpcaceAvalable,
  });

  @override
  State<TopMenu> createState() => _TopMenuState();
}

class _TopMenuState extends State<TopMenu> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Center(
                child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fitHeight,
            )),
          ),
        ),
         Expanded(
          flex: 9,
          child: widget.isSpcaceAvalable ? const Menu() : Container(),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: const [
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
                  )),
              Expanded(
                  child: Icon(
                Icons.menu,
                color: Colors.grey,
              )),
              Expanded(
                  child: CircleIcon(borderColor: Colors.grey, child: Text('G', style: TextStyle(fontSize: 20),))),
            ],
          ),
        ),
      ],
    );
  }
}



class Menu extends StatefulWidget {
  const Menu({
    super.key,
  });

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _activeIndex = 3;

  void _onButtonPressed(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget buildButton(int index, String label) {
      final isActive = index == _activeIndex;

      return InkWell(
        onTap: () => _onButtonPressed(index),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontFamily: 'Cera Pro',
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: isActive ? const Color.fromARGB(255, 0, 187, 212) : Colors.grey,
            ),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildButton(0, 'Social'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(1, 'Cases'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(2, 'Quizzes'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(3, 'Articles'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(4, 'Drugs'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(5, 'Webinars'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(6, 'Calculators'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(7, 'Guidelines'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(8, 'Surveys'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(9, 'news'),
        Container(
          width: 2,
          height: 20,
          color: Colors.grey,
        ),
        buildButton(10, 'Clinical Trials'),

      ],
    );
  }
}
