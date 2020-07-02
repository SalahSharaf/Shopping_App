import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:helloworld/component/HorizontalListView.dart';
import 'package:helloworld/component/ProductGridView.dart';

void main() {
  runApp(new MaterialApp(home: new HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget carousel = new Container(
      height: 300,
      child: Padding(
          padding: EdgeInsets.all(0),
          child: new Carousel(
            boxFit: BoxFit.cover,
            images: [
              new AssetImage("images/c1.jpg"),
              new AssetImage("images/m1.jpeg"),
              new AssetImage("images/m2.jpg"),
              new AssetImage("images/w1.jpeg"),
              new AssetImage("images/w3.jpeg"),
              new AssetImage("images/w4.jpeg"),
            ],
            autoplay: true,
            dotSize: 2,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            indicatorBgPadding: 4,
          )
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Shopping application"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed: null),
          new IconButton(icon: new Icon(Icons.shopping_cart), onPressed: null)
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("salah"),
              accountEmail: new Text("salah.amse@gmail.com"),
              currentAccountPicture: new GestureDetector(
                child: new CircleAvatar(
                  child: Icon(Icons.person, color: Colors.black),
                ),
              ),
            ),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("Home Page"),
                  leading: new Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                )),
            new Divider(),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("My Account"),
                  leading: new Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                )),
            new Divider(),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("My Orders"),
                  leading: new Icon(
                    Icons.shopping_basket,
                    color: Colors.black,
                  ),
                )),
            new Divider(),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("Categories"),
                  leading: new Icon(
                    Icons.category,
                    color: Colors.black,
                  ),
                )),
            new Divider(),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("Favourites"),
                  leading: new Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                )),
            new Divider(),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("Settings"),
                  leading: new Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                )),
            new Divider(),
            new InkWell(
                onTap: showToast,
                child: new ListTile(
                  title: new Text("About"),
                  leading: new Icon(
                    Icons.help,
                    color: Colors.green,
                  ),
                )),
            new Divider()
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          carousel,
          new Padding(
              padding: EdgeInsets.all(10), child: new Text("Categories")),
          HorizontalListView(),
          new Padding(
              padding: EdgeInsets.all(10), child: new Text("Recent Product")),
          new Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                child: Products(),
                height: 280,
              )
            ],
          ),
        ],
      ),
    );
  }

  showToast() {
    Fluttertoast.showToast(
        msg: "welcome",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
