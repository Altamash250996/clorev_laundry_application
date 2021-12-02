import 'package:flutter/material.dart';

class Check_box extends StatefulWidget {
  @override
  _Check_boxState createState() => _Check_boxState();
}

class _Check_boxState extends State<Check_box> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.blue;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        const FittedBox(
          fit: BoxFit.fitWidth,
          child: Text(
            " I have read and do hereby agree to the Terms \n of use and Privacy Policy "
            "of CLOREV Laundry.",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}
