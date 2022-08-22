import 'package:flutter/material.dart';
import '../constants.dart';

class BottomBottom extends StatelessWidget {
  BottomBottom({required this.onTap, required this.buttonTitle});
  final Function()? onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      //  GESTUREDETECTOR ÉCOUTE LES EVENEMENTS
      onTap: onTap,
      child: Container(
        child:Center(
            child: Text(buttonTitle,style: kLargeButtonTextStyle ,
               
            )),
        color: kTurquoiseColour,

        margin: EdgeInsets.only(top: 10.00),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}