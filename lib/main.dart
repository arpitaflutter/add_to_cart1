import 'package:add_to_cart/home/provider/home_provider.dart';
import 'package:add_to_cart/screen1/screen1_view.dart';
import 'package:add_to_cart/screen2/screen2_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home/view/home_screen.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => home_provider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home_screen(),
          'addtocart':(context) => screen1_view(),
          'addtocart2':(context) => screen2_view(),
        },
      ),
    ),
  );
}