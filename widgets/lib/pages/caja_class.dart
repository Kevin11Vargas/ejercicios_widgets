import 'package:flutter/material.dart';

class CajaClase extends StatelessWidget {
  const CajaClase({super.key});

 @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.bodyMedium!,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    // A fixed-height child.
                    color: Color.fromARGB(255, 3, 255, 158), // Yellow
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('HOLAA CREO QUE SOY LA CAJA 1'),
                  ),
                  Container(
                    // Another fixed-height child.
                    color: Color.fromARGB(255, 217, 255, 0), // Green
                    height: 120.0,
                    alignment: Alignment.center,
                    child: const Text('CREO QUE SOY LA CAJA 2'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
