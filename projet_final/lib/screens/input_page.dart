

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projet_final/calcul.dart';
import 'package:projet_final/screens/results_page.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../constants.dart';
import 'results_page.dart';
import '../components/bottom_bottom.dart';
import '../components/round_icon_button.dart';
import '../components/alertDialog.dart';
import 'dart:math';


//VARIABLES

double nbPe100 = 0;
String uniteDeMesure = 'pi²';

enum TypeDeProduit{
  pe100,
  pps85
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {


  TypeDeProduit selectedTypeDeProduit =  TypeDeProduit.pe100 ;
  int superfice = 180;
  int nbrCouche = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculatrice de quantié'),
        backgroundColor: Color(0xDD038c9e),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         //PREMIRE LIGNE QUI CONTIENT DEUX SECTIONS
          Expanded(
            child: Row(
              children: [
                //FloatingActionButton(onPressed: onPressed)
                //LES DEUX SECTION DE LA PREMIÈRE LIGNE
                Expanded(
                    child: ReusableCard(
                      onPress:(){
                        setState(() {
                          selectedTypeDeProduit = TypeDeProduit.pe100;
                        });
                      } ,
                      couleur: selectedTypeDeProduit == TypeDeProduit.pe100 ? kActiveCardColour:kInactiveCardColour,
                      cardChild:IconContent(icon: FontAwesomeIcons.fill,label : 'PE-100'),
                    )),
                Expanded(child: ReusableCard(
                  onPress:(){
                    setState(() {
                      selectedTypeDeProduit = TypeDeProduit.pps85;
                    });
                  } ,
                  couleur: selectedTypeDeProduit == TypeDeProduit.pps85 ? kActiveCardColour:kInactiveCardColour,
                  cardChild:IconContent(icon: FontAwesomeIcons.fill,label : 'PP-S85'),
                )),
              ],
            ),
          ),
          //section du milieu
          Expanded(
            child: ReusableCard(couleur: kActiveCardColour
              ,  cardChild:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('SUPERFICE',
                    style:kLabelTextStyle,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        superfice.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        uniteDeMesure,
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(value: superfice.toDouble(),
                      min:100.0,
                      max:100000.0,
                      activeColor:kTurquoiseColour ,
                      inactiveColor: Colors.white,
                      onChanged:(double newValue){
                        setState(() {
                          superfice = newValue.round();
                        });

                      }),
                ],
              ),
            ),
          ),

          //TROISIÈME LIGNE QUI CONTIENT UNE COLONES
          Expanded(
              child: Row(
                children: [
                  //les deux sections de la troisième ligne
                  Expanded(
                    child: ReusableCard(couleur: kActiveCardColour,
                      cardChild:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Nombre de couche',style: kLabelTextStyle),
                          Text(
                            nbrCouche.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoudIconButton(icon:FontAwesomeIcons.plus,
                                  onPressed:(){
                                    setState(() {

                                      nbrCouche++;
                                    });
                                  }
                              ),

                              SizedBox(width: 10.0),
                              RoudIconButton(icon:FontAwesomeIcons.minus,
                                  onPressed:(){
                                    setState(() {
                                      nbrCouche--;
                                    });
                                  }
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Expanded(
                   // child: ReusableCard(couleur: kActiveCardColour,  cardChild:Column(),
                  // ),
                 // ),
                ],
              )),
          BottomBottom(buttonTitle: 'CALCULER',onTap:(){
            {
              //VERIFICATION QUE LE NOMBRE DE COUCHE EST VALIDE DOIT ETRE ENTRE 1 ET 3
              if(nbrCouche == 0 || nbrCouche > 3 ) {
                showAlertDialog(context);
              }
              //PP-S85  SYSTEME UNE COUCHE
              if(nbrCouche == 1 && selectedTypeDeProduit == TypeDeProduit.pps85 ){
                Calcul calc = Calcul(superfice:superfice,nbrCouche: nbrCouche );
                Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(
                  nbrKit: calc.calculerNbrProduitPPS85(),
                )));
              }
              //PP-S85 SYSTEME DEUX COUCHE
              if(nbrCouche == 2 && selectedTypeDeProduit == TypeDeProduit.pps85 ){
                Calcul calc = Calcul(superfice:superfice,nbrCouche: nbrCouche );
                Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(
                  nbrKit: calc.calculerNbrProduitPPS85Deux(),
                )));
              }
              //PP-S85 SYSTEME TROIS COUCHE
              if(nbrCouche == 2 && selectedTypeDeProduit == TypeDeProduit.pps85 ){
                Calcul calc = Calcul(superfice:superfice,nbrCouche: nbrCouche );
                Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(
                  nbrKit: calc.calculerNbrProduitPPS85Trois(),
                )));
              }
              // PE-100 SYSTEME UNE COUCHE
              if(nbrCouche == 1){
                Calcul calc = Calcul(superfice:superfice,nbrCouche: nbrCouche );
                Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(
                  nbrKit: calc.calculerNbrProduitPe100Une(),

                )));
              }
              //PE-100 SYSTEME DEUX COUCHES
              if(nbrCouche == 2){
                Calcul calc = Calcul(superfice:superfice,nbrCouche: nbrCouche );
                Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(
                  nbrKit: calc.calculerNbrProduitPe100Deux(),

                )));
              }

            }
            //PE-100 SYSTEME TROIS COUCHES
            if(nbrCouche == 3){
            Calcul calc = Calcul(superfice:superfice,nbrCouche: nbrCouche );
            Navigator.push(context,MaterialPageRoute(builder: (context) => ResultsPage(
            nbrKit: calc.calculerNbrProduitPe100Trois(),

            )));
            }
          },),
        ],
      ),
    );
  }
}



