
import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  final bool isWeb;
  const CustomDropDownButton({Key? key, required this.isWeb}) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String selectedOption = 'Critical Care';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: widget.isWeb ? 600 : double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 16),
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all( Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8.0),
          child: DropdownButton<String>(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            style:Theme.of(context).textTheme.displaySmall,
            isExpanded: true,
            elevation: 5,
            underline: Container(),
            value: selectedOption,
            onChanged: (String? newValue) {
              setState(() {
                selectedOption = newValue!;
              });
            },
            items: <String>['Critical Care', 'Option 2', 'Option 3', 'Option 4']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                alignment: Alignment.center,
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
