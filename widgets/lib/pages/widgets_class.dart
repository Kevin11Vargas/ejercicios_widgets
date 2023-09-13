import 'package:flutter/material.dart';

class widgets_class extends StatefulWidget {
  const widgets_class({super.key});

  @override
  State<widgets_class> createState() => _widgets_classState();
}

class _widgets_classState extends State<widgets_class> {
  @override
   Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('DIALOGO DE ALERTA'),
          content: const Text('¿MASO LE ENTENDEMOS?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}


