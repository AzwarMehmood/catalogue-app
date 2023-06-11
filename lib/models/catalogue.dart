// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class CatalogueModel {
  static List<Item> items = [];
}

class Item {
  final num id;
  final String name;
  final String avail;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.avail,
      required this.price,
      required this.color,
      required this.image});

  Item copyWith({
    num? id,
    String? name,
    String? avail,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id: this.id,
      name: this.name,
      avail: this.avail,
      price: this.price,
      color: this.color,
      image: this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avail': avail,
      'price': price,
      'color': color,
      'image': image,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      avail: map["avail"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(id: $id, name: $name, avail: $avail, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.avail == avail &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        avail.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
