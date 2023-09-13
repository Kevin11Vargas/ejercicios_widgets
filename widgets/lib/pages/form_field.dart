import 'package:flutter/material.dart';
class FieldClass extends StatefulWidget {
  @override
  _FieldClassState createState() => _FieldClassState();
}

class _FieldClassState extends State<FieldClass> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Nombre:',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Porfavor ingrese su nombre';
                }
                return null;
              },
              onSaved: (value) {
                setState(() {
                  _name = value!;
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState?.save();
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Holaa!'),
                      content: Text('Lograste entrar: $_name'),
                    );
                  },
                );
              }
            },
            child: Text('Enviar'),
          ),
        ],
      ),
    );
  }
}