import 'package:flutter/material.dart';

class checkBox_class extends StatefulWidget {
  const checkBox_class({super.key});

  @override
  State<checkBox_class> createState() => _checkBox_classState();
}

class _checkBox_classState extends State<checkBox_class> {
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
      return  Color.fromARGB(255, 43, 255, 0);
    }

    return Row(//esto me sirvio para agregar un texto antes del checkbox
      children: [
        Text('¿USTED ES UN ROBOT?'),
        Checkbox(
          checkColor: const Color.fromARGB(255, 15, 15, 15),
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
      ],
    );
  }
}
