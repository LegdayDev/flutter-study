import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingcart/constants.dart';

class ShoppingCartHeader extends StatefulWidget {
  @override
  _ShoppingCartHeaderState createState() => _ShoppingCartHeaderState();
}

class _ShoppingCartHeaderState extends State<ShoppingCartHeader> {
  int selectedId = 0;

  List<String> selectedPic = [
    "assets/p1.jpeg",
    "assets/p2.jpeg",
    "assets/p3.jpeg",
    "assets/p4.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderPic(),
        _buildHeaderSelector(),
      ],
    );
  }

  Widget _buildHeaderPic() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
          aspectRatio: 5 / 3,
          child: Image.asset(
              selectedPic[selectedId],
              fit: BoxFit.cover
          )),
    );
  }

  Widget _buildHeaderSelector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildHeaderSelectorButton(0),
        _buildHeaderSelectorButton(1),
        _buildHeaderSelectorButton(2),
        _buildHeaderSelectorButton(3),
      ],
    );
  }

  Widget _buildHeaderSelectorButton(int id) {
    return IconButton(
        onPressed: () {
          setState(() {
            selectedId = id;
          });
        },
        icon: Icon(
          Icons.directions_bike,
          color: Colors.black,)
    );
  }
}