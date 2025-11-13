import 'package:logger/logger.dart';

var logger = Logger();

class ListClass {
  void mois() {
    List<String> mois = [
      'janvier',
      'fevrier',
      'mars',
      'avril',
      'mai',
      'juin',
      'juillet',
      'aout',
      'septembre',
      'octobre',
      'novembre',
      'decembre',
    ];

    print(mois[3]);
    print(mois[5]);

    mois[9] = "Aout modifier";
    logger.i(mois);
  }

  void assosiaitf() {
    Map<String, int> departement = {'bouche du rhone': 13, 'var': 83};

    logger.i(departement);
  }
}
