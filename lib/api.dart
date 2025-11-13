import 'dart:convert';
import 'package:flutter_application_1/produit.dart';
import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

var log = Logger();

class ProductRepo {
  static getAllProduct() async {
    try {
      final Uri endpoint = Uri.parse('https://dummyjson.com/products');

      final response = await http.get(endpoint);
      final data = jsonDecode(response.body);

      var products = [];

      if (response.statusCode == 200) {
        for (var product in data["products"]) {
          products.add(
            Product(product['id'], product['title'], product['price']),
          );
        }
        products.forEach((product) => log.i({product.title, product.price}));
      }
    } catch (e) {
      log.w("erreur serveur $e");
    }
  }
}
