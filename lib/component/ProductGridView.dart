import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:helloworld/Pages/ProductDetails.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      "name": "blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 130,
      "price": 95
    },
    {
      "name": "dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 200,
      "price": 160
    },
    {
      "name": "blazer",
      "picture": "images/products/blazer1.jpeg",
      "oldPrice": 130,
      "price": 95
    },
    {
      "name": "dress",
      "picture": "images/products/dress1.jpeg",
      "oldPrice": 200,
      "price": 160
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return new Product(
              productList[index]["name"],
              productList[index]["picture"],
              productList[index]["oldPrice"],
              productList[index]["price"]);
        });
  }
}

class Product extends StatelessWidget {
  String product_name, product_picture;
  int oldPrice, price;

  Product(this.product_name, this.product_picture, this.oldPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Card(
            elevation: 50,
            shadowColor: Colors.black12,
            child: Hero(
              tag: product_name,
              child: Material(
                child: InkWell(onTap: (){Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>ProductDetails(product_name,product_picture,oldPrice,price)));},
                  child: GridTile(
                      footer: new Container(
                        color: Colors.white30,
                        child: ListTile(
                          leading: new Text(product_name),
                          title: new Text("\$$price"),
                        ),
                      ),
                      child: Image.asset(product_picture, fit: BoxFit.cover)
                  ),
                ),
              ),
            ),
          )
      ),
    );
  }
}
