import 'package:flutter/material.dart';
import 'package:helloworld/component/ProductGridView.dart';

class ProductDetails extends StatefulWidget {
  String productName, pictureAsset;
  int price, oldPrice;

  ProductDetails(this.productName, this.pictureAsset, this.oldPrice,
      this.price);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          elevation: 0.9,
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
        color: Colors.white,
            height: 300,
            child: GridTile(
              footer: Container(
                color: Colors.white30,
                child: ListTile(
                  leading: new Text(
                    widget.productName,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  title: new Row(
                    children: <Widget>[
                      new Expanded(
                          child: new Text(
                            "\$${widget.oldPrice}",
                            style: new TextStyle(
                                color: Colors.blueGrey,
                                decoration: TextDecoration.lineThrough),
                          )),
                      new Expanded(
                          child: new Text(
                            "\$${widget.price}",
                            style: new TextStyle(color: Colors.green),
                          ))
                    ],
                  ),
                ),
              ),
              child: Image.asset(widget.pictureAsset),
            ))
        //quantity buttons=======================
        ,
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  ShowDialog("Size", "Choose product size");
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  ShowDialog("Color", "Choose product color");
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Color"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  ShowDialog("Quantity", "Choose product quantity");
                },
                color: Colors.white,
                textColor: Colors.grey,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Qty"),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        MaterialButton(
          onPressed: () {},
          textColor: Colors.white,
          color: Colors.green,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: <Widget>[
                new Expanded(
                    child: Text(
                      "Buy Now",
                      textAlign: TextAlign.center,
                    ))
              ],
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.orange,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      new Expanded(
                          child: Text(
                            "Add to cart",
                            style: TextStyle(fontSize: 10),
                          )),
                      Icon(Icons.add_shopping_cart)
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    children: <Widget>[
                      new Expanded(
                          child: Text(
                            "Add to favourite",
                            style: TextStyle(fontSize: 10),
                          )),
                      Icon(Icons.favorite)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        Divider(color: Colors.black),
        Padding(
            padding: EdgeInsets.all(25), child: new Text("Product Details")),
        Padding(
          padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
          child: new Text(
              "So perhaps, you've generated some fancy text, and you're content that you can now copy and paste your fancy text in the comments section of funny cat videos, but perhaps you're wondering how it's even possible to change the font of your text? Is it some sort of hack? Are you copying and pasting an actual font?",
              style: TextStyle(color: Colors.grey)),
        ),
        Divider(color: Colors.black),
        Padding(
            padding: EdgeInsets.all(25),
            child: new Row(
              children: <Widget>[
                Text("Product Name : "),
                new Text(widget.productName)
              ],
            )),
        Divider(color: Colors.black),
        Padding(
            padding: EdgeInsets.all(25),
            child: new Row(
              children: <Widget>[
                Text("Product Price : "),
                new Text("${widget.price}")
              ],
            )),
        Divider(color: Colors.black),
        Padding(
            padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
            child: Text("More Products",style: TextStyle(fontWeight: FontWeight.bold),))
        ,new Container(
    height: 250,
    child: MoreProductsGridView(),)
    ]
    ,
    )
    ,
    );
  }

  ShowDialog(String title, String content) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: new Text(title),
            content: new Text(content),
            actions: <Widget>[
              MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(context);
                },
                color: Colors.black,
                textColor: Colors.white,
                child: new Text("Approve"),
              )
            ],
          );
        });
  }
}

class MoreProductsGridView extends StatefulWidget {
  @override
  _MoreProductsGridViewState createState() => _MoreProductsGridViewState();
}

class _MoreProductsGridViewState extends State<MoreProductsGridView> {
  var productList = [
    {
      "name": "blazer",
      "picture": "images/products/blazer2.jpeg",
      "oldPrice": 130,
      "price": 95
    },
    {
      "name": "dress",
      "picture": "images/products/skt1.jpeg",
      "oldPrice": 200,
      "price": 160
    },
    {
      "name": "dress",
      "picture": "images/products/shoe1.jpg",
      "oldPrice": 200,
      "price": 160
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: productList.length,
        itemBuilder: (BuildContext context, int index) {
          return new Product2(
              productList[index]["name"],
              productList[index]["picture"],
              productList[index]["oldPrice"],
              productList[index]["price"]);
        });
  }
}

class Product2 extends StatelessWidget {
  String product_name, product_picture;
  var oldPrice, price;

  Product2(this.product_name, this.product_picture, this.oldPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return new Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Card(
            elevation: 0.9,
            shadowColor: Colors.black,
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) =>
                          ProductDetails(
                              product_name, product_picture, oldPrice, price)));
                },
                child: GridTile(
                    footer: new Container(
                      color: Colors.white30,
                      child: ListTile(
                        leading: new Text(product_name),
                        title: new Text("\$$price"),
                        subtitle: new Text(
                          "\$${oldPrice}",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                    ),
                    child: Image.asset(product_picture, fit: BoxFit.cover)
                ),
              ),
            ),
          ),
        ));
  }
}
