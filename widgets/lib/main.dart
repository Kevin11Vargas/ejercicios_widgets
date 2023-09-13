import 'package:widgets/pages/bottom_navigation_bar.dart.dart';
import 'package:widgets/pages/checkbox_class.dart';
import 'package:widgets/pages/clase_form.dart';
import 'package:widgets/pages/dreawer_class.dart';
import 'package:widgets/pages/radio.dart';
import 'package:widgets/pages/timepiker_class.dart';
import 'package:widgets/pages/widgets_class.dart';
import 'package:flutter/material.dart';
import 'package:widgets/pages/widget_card.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: DrawerClase(),
        appBar: AppBar(
          title: const Text('Widgets'),
          bottom: PreferredSize(
            child: BottomNavigationBarWidget(),
            preferredSize: Size.fromHeight(50),
         ),
        ),
         body: Column(
          children: [
            widgets_class(),
            widgetCard(),
            checkBox_class(),
           ClaseForm(),
           radioBOO(),
           DateTimePicker(
          initialDate: DateTime.now(),
          onChanged: (selectedDate) {
            print("Seleccion de datos: $selectedDate");
          },
        ),
          ],
        ),
      ),
    );
  }
}






