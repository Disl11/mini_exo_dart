import 'package:logger/logger.dart';

var logger = Logger();

class Variable {
  //exo 1
  void sayHello() {
    logger.i("HELLOO beWeb");
  }

  //bonus
  int calcule1(n) {
    return n * 6;
  }

  //exo 2
  String say(String prenom, String nom, int age) {
    var result = ' Salut $prenom $nom comment ça va ? Vous avez $age ans ';

    return result;
  }

  //exo 3
  int km() {
    var km = 1;
    km = 3;
    km = 125;
    return km;
  }

  //exo 4
  void display() {
    String nom = "Brian";
    int age = 30;
    double taille = 1.80;
    bool ouinon = false;

    print(nom);
    print(age);
    print(taille);
    print(ouinon);
  }

  //exo 5

  void exo5() {
    int? rien = null;
  }

  //exo 8

  void calculate() {
    var addition = 3 + 4;
    var multiplication = 5 * 20;
    var division = 45 / 5;

    print(addition);
    print(multiplication);
    print(division);
  }
}
