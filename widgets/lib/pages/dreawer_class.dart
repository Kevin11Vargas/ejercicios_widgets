import 'package:flutter/material.dart';
import 'package:widgets/pages/caja_class.dart';
import 'package:widgets/pages/lista.dart';

class DrawerClase extends StatefulWidget {
  const DrawerClase({Key? key}) : super(key: key);

  @override
  State<DrawerClase> createState() => _DrawerClaseState();
}

class _DrawerClaseState extends State<DrawerClase> {
  void _navigateToMessages(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => CajaClase(), // Aquí se llama a la clase CajaClase()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('----Drawer----')),
      ),
      body: ListaClase(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('WIDGET CAJA'),
              onTap: () {
                _navigateToMessages(context); // Navegar a la pantalla de Messages
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
    );
  }
}