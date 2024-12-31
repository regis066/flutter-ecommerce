import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'assets/images/ZoomFreak.png',
        description: 'It adds a soft, comfortable sensation.'),
    Shoe(
        name: 'Air Jordan',
        price: '250',
        imagePath: 'assets/images/air-jordan-1-low.png',
        description: 'It is a brand of basketball shoes produced by Nike.'),
    Shoe(
        name: "KD Treys",
        price: '240',
        imagePath: 'assets/images/pegasus-41-mens.png',
        description: "It is built to keep up with his furious work ethic."),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath: 'assets/images/kyrie.png',
        description: 'It focuses on comfort, control and energy return')
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes  for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
