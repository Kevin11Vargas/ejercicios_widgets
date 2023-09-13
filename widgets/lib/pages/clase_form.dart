import 'package:flutter/material.dart';

class ClaseForm extends StatefulWidget {
  const ClaseForm({Key? key}) : super(key: key);

  @override
  State<ClaseForm> createState() => _ClaseFormState();
}

class _ClaseFormState extends State<ClaseForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>(); // Corregido

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Corregido
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Escribe tu correo',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Ingresa algo aqui meme';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Enviar :)'),
            ),
          ),
        ],
      ),
    );
  }
}