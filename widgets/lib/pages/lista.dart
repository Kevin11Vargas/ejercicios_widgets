import 'package:flutter/material.dart';
import 'package:widgets/pages/form_field.dart';


class ListaClase extends StatelessWidget {
  const ListaClase({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 25,
                  color: const Color.fromARGB(255, 0, 255, 21),
                  child: const Center(child: Text('ENTRADA NORTE')),
                ),
                Container(
                  height: 25,
                  color: const Color.fromARGB(255, 7, 255, 152),
                  child: const Center(child: Text('ENTRADA ESTE')),
                ),
                Container(
                  height: 25,
                  color: Color.fromARGB(255, 0, 255, 242),
                  child: const Center(child: Text('ENTRADA SUR')),
                ),
              ],
            ),
          ),
          FieldClass(),
        ],
      ),
    );
  }
}
