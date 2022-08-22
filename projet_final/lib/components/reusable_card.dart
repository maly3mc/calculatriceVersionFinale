import 'package:flutter/material.dart';

//CONTAINER QUI EST RÉUTILISÉ 5 FOIS
class ReusableCard extends StatelessWidget {
  ReusableCard({ this.couleur = Colors.red,required this.cardChild,  this.onPress});
  final Color couleur;

  //UNE CARTE DE CONCEPTION MATÉRIAU : UNE PANNEAU LÉGEREMENT ARRONDIS ET UNE OMBRE D'ÉLÉVATION
  Widget cardChild;

  final Function()? onPress ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: couleur,
            borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
