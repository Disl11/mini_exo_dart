import 'package:logger/logger.dart';

var logger = Logger();

class Boucle {
  //+++++++++++++++++ Boucles ++++++++++++++++

  //exo1
  void more10() {
    for (var i = 0; i <= 10; i++) {
      logger.i(i);
    }
  }

  //exo2
  void more20() {
    var i = 0;
    var y = 30;

    while (i <= 20) {
      var result = i * y;

      print(result);

      i++;
    }
  }

  //exo 3

  void more30() {
    var i = 100;
    var y = 20;

    while (i >= 10) {
      var result = i / y;

      print(result);

      i--;
    }
  }

  void more40() {
    double i = 1;

    while (i <= 10) {
      print(i);

      i += i / 2;
    }
  }

  void pas() {
    for (var i = 1; i <= 15; i++) {
      print("On y est preseque !");
    }
  }

  void recule() {
    for (var i = 20; i >= 0; i--) {
      print(i);
    }
  }

  void rapide() {
    for (var i = 1; i <= 100; i = i + 15) {
      print('on tien le bout $i');
    }
  }
}
