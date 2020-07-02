import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  String productName, pictureAsset;
  int price, oldPrice;

  ProductDetails(
      this.productName, this.pictureAsset, this.oldPrice, this.price);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.purple,
        title: Text("Shopping application"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null),
          new IconButton(icon: new Icon(Icons.shopping_cart), onPressed: null)
        ],
      ),
      body: new ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[
          new Container(
              height: 300,
              child: GridTile(
                footer: new Text(widget.productName),
                child: Image.asset(widget.pictureAsset),
              ))
        ],
      ),
    );
  }
}
