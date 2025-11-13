import 'package:logger/logger.dart';

class Fonction {
  String saySentence(String prenom, String nom, int age) {
    var result = ' Salut $prenom $nom comment ça va ? Vous avez $age ans ';

    return result;
  }

  String retourneChaine(String texte) {
    return texte;
  }

  String deuxChaine(String text1, String text2) {
    return text1 + " " + text2;
  }

  String deuxNombre(int nombre1, int nombre2) {
    if (nombre1 > nombre2) {
      return '$nombre1 est superieur a $nombre2';
    } else if (nombre1 == nombre2) {
      return '$nombre1 est egale a $nombre2';
    } else {
      return '$nombre1 est inferieur a $nombre2';
    }
  }

  int sommmeTroisNombres({int a = 0, int b = 0, int c = 0}) {
    return a + b + c;
  }
}
