// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

ItemList itemListFromJson(String str) => ItemList.fromJson(json.decode(str));

String itemListToJson(ItemList data) => json.encode(data.toJson());

class ItemList {
  List<Item> items;

  ItemList({
    required this.items,
  });

  factory ItemList.fromJson(Map<String, dynamic> json) => ItemList(
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  String title;
  List<Item> items;

  Item({
    required this.title,
    required this.items,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    title: json["title"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

//
// {
// "items": [
// {
// "title": "Item 1",
// "items": [
// {
// "title": "Item 1.1",
// "items": [
// {
// "title": "1.1.1",
// "items": [
//
// ]
// },
// {
// "title": "1.1.2",
// "items": [
//
// ]
// }
// ]
// },
// {
// "title": "Item 1.2",
// "items": [
// {
// "title": "1.2.1",
// "items": [
//
// ]
// }
// ]
// }
// ]
// },
// {
// "title": "Item 2",
// "items": [
// {
// "title": "2.1",
// "items": [
//
// ]
// },
// {
// "title": "2.2",
// "items": [
//
// ]
// }
// ]
// },
// {
// "title": "Item 3",
// "items": [
// {
// "title": "3.1",
// "items": [
//
// ]
// },
// {
// "title": "3.2",
// "items": [
// {
// "title": "3.2.1",
// "items": [
//
// ]
// }
// ]
// }
// ]
// }
// ]
// }
