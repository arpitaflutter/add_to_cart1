import 'package:add_to_cart/home/model/home_model.dart';
import 'package:add_to_cart/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class screen1_view extends StatefulWidget {
  const screen1_view({Key? key}) : super(key: key);

  @override
  State<screen1_view> createState() => _screen1_viewState();
}

class _screen1_viewState extends State<screen1_view> {
  @override
  Widget build(BuildContext context) {

    cartModel h1 = ModalRoute.of(context)!.settings.arguments as cartModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade50,
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${h1.image}",style: TextStyle(fontSize: 40)),
              SizedBox(height: 20,),
              Text("${h1.name}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
              SizedBox(height: 15,),
              Text("${h1.price}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
              SizedBox(height: 15,),

              ElevatedButton(onPressed: () {
                cartModel c1 = cartModel(price: h1.price,image: h1.image,name: h1.name);

                Provider.of<home_provider>(context,listen: false).add(c1);
              }, child: Text('Add to cart'))
            ],
          ),
        ),
      ),
    );
  }
}
