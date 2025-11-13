import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

var logger = Logger();

class Produit {
  int id;
  String title;
  double price;

  Produit({required this.id, required this.title, required this.price});

  // factory constructor pour crée un objet produit a partir d'un json
  //
  factory Produit.fromJson(Map<String, dynamic> json) {
    return Produit(id: json['id'], title: json['title'], price: json['price']);
  }
}
