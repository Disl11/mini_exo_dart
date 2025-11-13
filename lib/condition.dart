import 'package:logger/logger.dart';

var logger = Logger();

class Condition {
  //exo 1
  void adulte(int age) {
    if (age < 18) {
      logger.i("vous etes mineur");
    } else {
      logger.i("vous etes adultes");
    }
  }

  // exo 2
  void genre(int age, bool isHomme) {
    if (isHomme && age > 18) {
      logger.i("Vous etes un homme qui est majeur! ");
    } else if (isHomme && age <= 18) {
      logger.i("Vous etes un homme mineur! ");
    } else if (!isHomme && age >= 18) {
      logger.i("Vous etes une femme qui est majeur! ");
    } else {
      logger.i("Vous etes un femme mineur! ");
    }
  }

  //exo 3
  void dev(bool isHomme) {
    if (isHomme) {
      logger.i("c'est un dev");
    } else {
      logger.i("C'est une developpeuse !!!");
    }
  }

  // exo 4
  void majeur(bool isMajeur) {
    if (!isMajeur) {
      logger.i("c'est pas bon !");
    } else {
      logger.i("c'est ok !");
    }
  }
}
