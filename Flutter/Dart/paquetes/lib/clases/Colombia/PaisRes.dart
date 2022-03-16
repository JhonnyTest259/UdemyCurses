// To parse this JSON data, do
//
//     final paisRes = paisResFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/clases/Colombia/Currency.dart';
import 'package:paquetes/clases/Colombia/Language.dart';

PaisRes paisResFromJson(String str) => PaisRes.fromJson(json.decode(str));

String paisResToJson(PaisRes data) => json.encode(data.toJson());

class PaisRes {
  String name;
  int population;
  String flag;
  List<double> latlng;
  List<String> borders;
  List<Currency> currencies;
  List<Language> languages;

  PaisRes({
    required this.name,
    required this.population,
    required this.flag,
    required this.latlng,
    required this.borders,
    required this.currencies,
    required this.languages,
  });

  factory PaisRes.fromJson(Map<String, dynamic> json) => PaisRes(
        name: json['name'],
        population: json['population'],
        flag: json['flag'],
        latlng: List<double>.from(json['latlng'].map((x) => x)),
        borders: List<String>.from(json['borders'].map((x) => x)),
        currencies: List<Currency>.from(
            json['currencies'].map((x) => Currency.fromJson(x))),
        languages: List<Language>.from(
            json['languages'].map((x) => Language.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        'name': name,
        'population': population,
        'flag': flag,
        'latlng': List<dynamic>.from(latlng.map((x) => x)),
        'borders': List<dynamic>.from(borders.map((x) => x)),
        'currencies': List<dynamic>.from(currencies.map((x) => x.toJson())),
        'languages': List<dynamic>.from(languages.map((x) => x.toJson())),
      };
}
