import 'package:flutter/material.dart';

enum SingingCharacter { Kevin, Fared }
class radioBOO extends StatefulWidget {
  const radioBOO({super.key});

  @override
  State<radioBOO> createState() => _radioBOOState();
}

class _radioBOOState extends State<radioBOO> {
  SingingCharacter? _character = SingingCharacter.Kevin;
 @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Kevin'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Kevin,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Fared'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.Fared,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
