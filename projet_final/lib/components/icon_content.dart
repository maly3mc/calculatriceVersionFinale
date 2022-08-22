
import 'package:flutter/material.dart';
import '../constants.dart';


// METHODE QUI PERMET DE MODIFIER L'IMAGE ET LE TEXTE DES DEUX PREMIÈRES LIGNES
class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            label,
            style:kLabelTextStyle
        ),
      ],
    );
  }
}