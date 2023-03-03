import 'package:flutter/cupertino.dart';

import '../model/home_model.dart';

class home_provider extends ChangeNotifier
{
  List<cartModel> l1 = [

    cartModel(name: "apple",image: "🍎",price: 100),
    cartModel(name: "Mango",image: "🥭",price: 100),
    cartModel(name: "Kiwi",image: "🥝",price: 100),
    cartModel(name: "Strawberry",image: "🍓",price: 100),
    cartModel(name: "Grapes",image: "🍇",price: 100),
    cartModel(name: "Watermelon",image: "🍉",price: 100),
    cartModel(name: "Pineapple",image: "🍍",price: 100),

  ];

  List<cartModel> cart = [];

  void add(cartModel h1)
  {
    cart.add(h1);
  }


}