import 'package:flutter/material.dart';

// ignore: camel_case_types
class widgetCard extends StatefulWidget {
  const widgetCard({super.key});

  @override
  State<widgetCard> createState() => _widgetCardState();
}

// ignore: camel_case_types
class _widgetCardState extends State<widgetCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: const Color.fromARGB(255, 40, 243, 33).withAlpha(30),
          onTap: () {
            debugPrint('TARJETA');
          },
          child: const SizedBox(
            width: 300,
            height: 40,
            child: Text('TARJETA Alumno: Kevin Fared Velazquez Vargas'),
          ),
        ),
      ),
    );
  }
}
