import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(Calculator());

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //THEME D'APPLICATION
      theme:ThemeData.dark().copyWith(
          textTheme: TextTheme(
          ),
          scaffoldBackgroundColor: Colors.black,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.red,
          ).copyWith(secondary: Colors.red),
        ),

      //Appel de la page input_page
      home: InputPage(),

      );


  }
}


