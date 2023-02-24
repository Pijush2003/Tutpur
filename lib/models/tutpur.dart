import 'package:flutter/material.dart';

class tutpurModel{
  static final items =[
    Item(
      id: "Tutpur001",
      name: "Iphone 12 pro max",
      Description: "Ai 15 bionic chipset",
      color: "#33505a",
      price: 999,
      image:
          "https://images.unsplash.com/photo-1617997455403-41f333d44d5b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjBwcm8lMjBtYXh8ZW58MHx8MHx8&w=1000&q=80")

  ];
}

class Item {
  final String id;
  final String name;
  final String Description;
  final String color;
  final num price;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.Description,
      required this.color,
      required this.price,
      required this.image});
}