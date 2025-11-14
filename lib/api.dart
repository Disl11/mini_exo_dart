import 'dart:convert';
import 'package:flutter_application_1/produit.dart';
import 'package:flutter_application_1/user.dart';
import 'package:http/http.dart' as http;
import 'package:logger/web.dart';

var log = Logger();

class ProductRepo {
  //Produit
  Future<List<Product>> getAllProduct() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List productJson = data["products"];
      return productJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception("Erreur dans la récupération des produits");
    }
  }

  //User
  Future<List<User>> getAllUser() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List userJson = data['users'];
      return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception("erreur serveur user");
    }
  }
}
