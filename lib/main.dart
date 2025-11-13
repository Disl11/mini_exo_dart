import 'package:flutter/material.dart';
import 'package:flutter_application_1/api.dart';
import 'var.dart';
import 'condition.dart';
import 'boucle.dart';
import 'list.dart';
import 'fonction.dart';
import 'package:logger/logger.dart';
import 'api.dart';
import 'produit.dart';

var logger = Logger();

void main() async {
  // logger.d("Message debug"); // debug
  // logger.i("Information"); // info
  // logger.w("Avertissement"); // warning
  // logger.e("Erreur"); // error

  var variable = Variable();
  var condition = Condition();
  var boucle = Boucle();
  var list = ListClass();
  var fonction = Fonction();

  //++++++ fetch api dummyJson ++++++

  ProductRepo.getAllProduct();

  //+++++ variable +++++
  // variable.sayHello();
  // logger.i(variable.calcule1(5));
  // logger.i(variable.say("Brian", "Farnier", 30));
  // logger.i(variable.km());
  // variable.display();
  // variable.exo5();
  // variable.calculate();

  //++++ condition +++++
  // condition.adulte(14);
  // condition.genre(20, true);
  // condition.dev(false);
  // condition.majeur(false);

  //+++++++ boucle +++++++
  // boucle.more10();
  // boucle.more20();
  // boucle.more30();
  // boucle.more40();
  // boucle.pas();
  // boucle.recule();
  // boucle.rapide();

  //+++++++ List +++++++++
  // list.mois();
  // list.assosiaitf();

  //++++++fonction++++++

  // logger.i(fonction.saySentence("jean", "roger", 53));
  // logger.i(fonction.retourneChaine("BLALALALALALALALL"));
  // logger.i(fonction.deuxChaine("yyyoooooo", "je parle 2 fois"));
  // logger.i(fonction.deuxNombre(15, 15));
  // logger.i(fonction.sommmeTroisNombres(a: 5, b: 6, c: 8));
}
