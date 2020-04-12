import 'package:flutter/material.dart';

void main() => runApp(ShopApp());

class ShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: Text('FashApp'),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){

          }),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){

          })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
//            header
          new UserAccountsDrawerHeader(
              accountName: Text('The User Name'),
              accountEmail: Text('sample@email.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, color: Colors.white,),
            ),
          ),
          decoration: new BoxDecoration(
            color: Colors.red
          ),
          ),
//            body

          InkWell(
            onTap: (){
              print('My account');
            },
            child: ListTile(
              title: Text('My account'),
              leading: Icon(Icons.home),
            ),
          ),
            InkWell(
              onTap: (){
                print('My account');
              },
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: (){
                print('My orders');
              },
              child: ListTile(
                title: Text('My orders'),
                leading: Icon(Icons.shopping_cart),
              ),
            ),
            InkWell(
              onTap: (){
                print('Categoris');
              },
              child: ListTile(
                title: Text('Categoris'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: (){
                print('Favorites');
              },
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){
                print('Settings');
              },
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){
                print('about');
              },
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
