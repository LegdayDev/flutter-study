import 'package:flutter/material.dart';
import 'package:shoppingcart/components/shoppingcart_detail.dart';
import 'package:shoppingcart/components/shoppingcart_header.dart';
import 'package:shoppingcart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){
          print("클립됨");
        },
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: (){
            print("클립됨");
          },
        ),
        SizedBox(
          width: 16,
        )
      ],
    );
  }
}
