import 'dart:convert';
import 'package:flutter_application_1/produit.dart';
import 'package:flutter_application_1/user.dart';
import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

var log = Logger();

class ProductRepo {
  //Produit
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

  //User
  static getAllUser() async {
    try {
      final Uri endpoint = Uri.parse('https://dummyjson.com/users');

      final response = await http.get(endpoint);
      final data = jsonDecode(response.body);

      var users = [];

      if (response.statusCode == 200) {
        for (var user in data["users"]) {
          users.add(User(user['id'], user['firstName'], user['lastName']));
        }
        users.forEach((user) => log.i({user.firstName, user.lastName}));
      }
    } catch (e) {
      log.w("erreur serveur $e");
    }
  }
}
