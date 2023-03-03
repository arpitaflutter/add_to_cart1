import 'package:add_to_cart/home/model/home_model.dart';
import 'package:add_to_cart/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class screen2_view extends StatefulWidget {
  const screen2_view({Key? key}) : super(key: key);

  @override
  State<screen2_view> createState() => _screen2_viewState();
}

class _screen2_viewState extends State<screen2_view> {
  @override
  Widget build(BuildContext context) {
    home_provider h1 = Provider.of<home_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: Consumer<home_provider>(
          builder: (context, value, child) => ListView.builder(itemBuilder: (context, index) => ListTile(
            leading: Text("${h1.cart[index].image}"),
            title: Text("${h1.cart[index].name}"),
            subtitle: Text("${h1.cart[index].price}"),

          ),
            itemCount: h1.cart.length,
          ),
        ),
      ),
    );

  }
}
