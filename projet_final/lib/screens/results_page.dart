import 'package:flutter/material.dart';
import 'package:projet_final/constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_bottom.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({required this.nbrKit});
  final String nbrKit;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculateur de quantié'),
        backgroundColor: Color(0xDD038c9e),



      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(



      padding: EdgeInsets.all(15.0),
                margin: EdgeInsets.all(0.0),
                alignment:Alignment.bottomLeft,
                child: Center(
                  child: Text(
                    'Votre résulat',
                    

                    style: kTitleTextStyle,
                  ),
                ),
              ),
            ),

          Expanded(
          flex: 5,
          child: ReusableCard(couleur: kActiveCardColour,cardChild:Column(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text(
              'Produit nécessaire',
              style: kresultText,
            ),Text(nbrKit
              ,
              style:kResultat ,
            ),
            Text('Vous avez besoin de ce nombre de kit de produit pour effectuer votre projet',
              style: kMessage,
            textAlign: TextAlign.center,)

  ]),

    ),
    ),
BottomBottom(onTap:(){
  Navigator.pop(context);
}, buttonTitle:'Calculer de nouveau')
    ]),
    );
  }
}
