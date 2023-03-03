import 'package:add_to_cart/home/model/home_model.dart';
import 'package:add_to_cart/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  home_provider? h1;

  @override
  Widget build(BuildContext context) {
    h1 = Provider.of<home_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products"),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {
              Navigator.pushNamed(context, 'addtocart2');
            }, icon: Icon(Icons.add_shopping_cart))
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: h1!.l1.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {

                Navigator.pushNamed(context, 'addtocart',arguments: h1!.l1[index]);
              },
              child: Container(
               margin: EdgeInsets.all(15),
                color: Colors.blue.shade100,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${h1!.l1[index].image}",
                        style: TextStyle(fontSize: 30)
                    ),
                    Text("${h1!.l1[index].name}",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)
                    ),
                    Text("${h1!.l1[index].price}",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
