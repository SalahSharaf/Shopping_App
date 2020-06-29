import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '';
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
                ),onTap:showToast(),
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
    );
  }

  showToast() {
    Fluttertoast.showToast(
        msg: "welcome",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
