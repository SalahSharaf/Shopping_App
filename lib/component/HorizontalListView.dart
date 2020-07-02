import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,width: 100,
      child: new Padding(
        padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Category("images/cats/tshirt.png", "tshirt"),
            Category("images/cats/dress.png", "dress"),
            Category("images/cats/jeans.png", "pants"),
            Category("images/cats/tshirt.png", "tshirt"),
            Category("images/cats/dress.png", "dress"),
            Category("images/cats/jeans.png", "pants")
          ],
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  String location, name;

  Category(this.location, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(4),
        child: InkWell(onTap: (){},
            child: new Container(alignment: Alignment.bottomCenter,
          width: 100,
          height: 80,
          child: ListTile(
              title: Image.asset(location),
              subtitle: new Text(name,textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black54, fontSize: 15))),
        )),
      ),
    );
  }
}
