import 'package:flutter/material.dart';
import 'package:flutter_ui_app/tools/Store.dart';
import 'package:flutter_ui_app/userScreems/aboutUs.dart';
import 'package:flutter_ui_app/userScreems/cart.dart';
import 'package:flutter_ui_app/userScreems/delivery.dart';
import 'package:flutter_ui_app/userScreems/favorites.dart';
import 'package:flutter_ui_app/userScreems/history.dart';
import 'package:flutter_ui_app/userScreems/loginLogout.dart';
import 'package:flutter_ui_app/userScreems/messages.dart';
import 'package:flutter_ui_app/userScreems/notifications.dart';
import 'package:flutter_ui_app/userScreems/profil.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Girlies',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Girlies"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GirliesFavorities()),
              );
            },
          ),
          new Container(
            padding: EdgeInsets.only(top: 5),
            child: new Stack(
              children: <Widget>[
                new IconButton(
                    icon: new Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GirliesMessages()));
                    }),
                new CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.red,
                  child: new Text(
                    "0",
                    style: new TextStyle(color: Colors.white, fontSize: 10.0),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Flexible(
                child: new GridView.builder(
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: storeItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return new Card(
                        child: Stack(
                          alignment: FractionalOffset.topLeft,
                          children: <Widget>[
                            new Stack(
                              alignment: FractionalOffset.bottomCenter,
                              children: <Widget>[
                                new Container(
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      fit: BoxFit.fitWidth,
                                      image: new NetworkImage(
                                          storeItems[index].itemImage),
                                    ),
                                  ),
                                ),
                                new Container(
                                  color: Colors.black.withAlpha(100),
                                  height: 35,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: new Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Text(
                                          "${storeItems[index].itemName.substring(0, 5)}...",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        new Text(
                                          "N${storeItems[index].itemPrice}",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Container(
                                  height: 30.0,
                                  width: 60.0,
                                  decoration: new BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: new BorderRadius.only(
                                      topRight: new Radius.circular(5.0),
                                      bottomRight: new Radius.circular(5.0),
                                    ),
                                  ),
                                  child: new Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      new Icon(
                                        Icons.star,
                                        color: Colors.blue,
                                      ),
                                      new Text(
                                        "${storeItems[index].itemRating}",
                                        style:
                                            new TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                new IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  color: Colors.blue,
                                  onPressed: null,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    })),
          ],
        ),
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GirliesCart()));
            },
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 8.0,
            backgroundColor: Colors.red,
            child: new Text(
              "0",
              style: new TextStyle(color: Colors.white, fontSize: 10.0),
            ),
          )
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                "Etienne BELEMGNEGRE",
                style: new TextStyle(fontSize: 15),
              ),
              accountEmail: new Text(
                "belemgnegreetienne@gmail.com",
                style: new TextStyle(fontSize: 15),
              ),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Icon(Icons.person),
              ),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Order Notifications"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (builder) => GirliesNotifications()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Order History"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GirliesHistories()));
              },
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Profil Settings"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GirliesProfils()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Delivery Address"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GirliesDelivery()));
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("About Us"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GirliesAboutUs()));
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(
                  Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Login"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GirliesLogin()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
