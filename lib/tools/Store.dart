import 'package:flutter/material.dart';

class Store {
  String itemName;
  double itemPrice;
  String itemImage;
  double itemRating;

  Store.items({this.itemName, this.itemPrice, this.itemImage, this.itemRating});
}

List<Store> storeItems = [
  Store.items(
      itemName: 'Pink Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2oDNNr8',
      itemRating: 0.0),

  Store.items(
      itemName: 'Black Can',
      itemPrice: 2100.0,
      itemImage: 'http://bit.ly/339q6G7',
      itemRating: 0.0),

  Store.items(
      itemName: 'Yellow Can',
      itemPrice: 3500.0,
      itemImage: 'http://bit.ly/33972rr',
      itemRating: 0.0),

  Store.items(
      itemName: 'White Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2N9vvHD',
      itemRating: 0.0),

  Store.items(
      itemName: 'Blue Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/339q6G7',
      itemRating: 0.0),

  Store.items(
      itemName: 'Red Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2N9vvHD',
      itemRating: 0.0),

  Store.items(
      itemName: 'Green Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/339q6G7',
      itemRating: 0.0),

  Store.items(
      itemName: 'Orange Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2oDNNr8',
      itemRating: 0.0),

  Store.items(
      itemName: 'Led Yarn',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2C7fJa5',
      itemRating: 0.0),

  Store.items(
      itemName: 'Zood Fly',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/325d5vX',
      itemRating: 0.0),

  Store.items(
      itemName: 'Yes Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/325d5vX',
      itemRating: 0.0),

  Store.items(
      itemName: 'Vol Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2N9vvHD',
      itemRating: 0.0),

  Store.items(
      itemName: 'Flutter Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/325d5vX',
      itemRating: 0.0),

  Store.items(
      itemName: 'Obama Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/36tjGnu',
      itemRating: 0.0),

  Store.items(
      itemName: 'Donald Can',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2C7fJa5',
      itemRating: 0.0),

  Store.items(
      itemName: 'Benny Hone',
      itemPrice: 2500.0,
      itemImage: 'http://bit.ly/2oDNNr8',
      itemRating: 0.0),
];