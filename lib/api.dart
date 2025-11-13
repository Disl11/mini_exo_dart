import 'dart:convert';
import 'package:http/http.dart' as http;
import 'produit.dart';
import 'package:logger/logger.dart';

var logger = Logger();

Future<List<Produit>> fetchProduits() async {
  final Uri endpoint = Uri.parse('https://dummyjson.com/products');
  final res = await http.get(endpoint);

  if (res.statusCode == 200) {
    final data = jsonDecode(res.body);
    final List produitsJson = data['products'];
    List<Produit> produits = [];
    for (var json in produitsJson) {
      produits.add(
        Produit(id: json['id'], title: json['title'], price: json['price']),
      );
    }
    return produits;
  } else {
    throw Exception('Erreur de status:${res.statusCode}');
  }
}
