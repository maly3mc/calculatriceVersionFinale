import 'dart:math';

class Calcul {

  Calcul({this.superfice = 0, this.nbrCouche = 0});

  final int superfice;
  final int nbrCouche;
  double _nbPe100 = 0;

  //PP-S85 UNE COUCHE
  String calculerNbrProduitPPS85() {
    if (nbrCouche == 1) {
      double _nbPe100 = (superfice / 150)/2;
      _nbPe100=_nbPe100;
      return _nbPe100.toStringAsFixed(1);
    } else {
      String test = " ";
      return test;
    }

  }
 //PP-S85 2 COUCHES

  String calculerNbrProduitPPS85Deux() {
    double nbProduitCoucheUn = 0;
    double nbProdiotCoucheDeux = 0;

    nbProduitCoucheUn = (superfice/150)/2;
    nbProdiotCoucheDeux = (superfice/80)/2;
    double _nbPe100 = nbProduitCoucheUn + nbProdiotCoucheDeux;

    return _nbPe100.toStringAsFixed(1);

  }

  //PP-S85 3 COUCHES

  String calculerNbrProduitPPS85Trois() {
    double nbProduitCoucheUn = 0;
    double nbProdiotCoucheDeux = 0;

    nbProduitCoucheUn = (superfice/150)/2;
    nbProdiotCoucheDeux = (superfice/80)/2;
    double _nbPe100 = nbProduitCoucheUn + nbProdiotCoucheDeux;

    return _nbPe100.toStringAsFixed(1);

  }
  //PE-100 UNE COUCHE
  String calculerNbrProduitPe100Une() {
    double nbProduitCoucheUn = 0;
    double nbProdiotCoucheDeux = 0;

      nbProduitCoucheUn = (superfice/150)/3;
      nbProdiotCoucheDeux = (superfice/80)/3;
      double _nbPe100 = nbProduitCoucheUn + nbProdiotCoucheDeux;

      return _nbPe100.toStringAsFixed(1);

}

//PE-100 DEUX COUCHES

  String calculerNbrProduitPe100Deux() {
    double nbProduitCoucheUn = 0;
    double nbProdiotCoucheDeux = 0;

    nbProduitCoucheUn = (superfice/150)/3;
    nbProdiotCoucheDeux = (superfice/80)/3;
    double _nbPe100 = nbProduitCoucheUn + nbProdiotCoucheDeux;

    return _nbPe100.toStringAsFixed(1);

  }

  //PE-100 TROIS COUCHES

  String calculerNbrProduitPe100Trois() {
    double nbProduitCoucheUn = 0;
    double nbProdiotCoucheDeux = 0;

    nbProduitCoucheUn = (superfice/150)/3;
    nbProdiotCoucheDeux = (superfice/80)/3;
    double _nbPe100 = nbProduitCoucheUn + nbProdiotCoucheDeux;

    return _nbPe100.toStringAsFixed(1);

  }

  String calculerNbrProduitPourDeuxTrois() {
    double nbProduitCoucheUn = 0;
    double nbProdiotCoucheDeux = 0;
    double nbProdiotCoucheTrois = 0;

    nbProduitCoucheUn = superfice/150;
    nbProdiotCoucheDeux = superfice/80;
    nbProdiotCoucheTrois = superfice/80;
    double _nbPe100 = nbProduitCoucheUn + nbProdiotCoucheDeux + nbProdiotCoucheTrois  ;

    return _nbPe100.toStringAsFixed(1);

  }



}


