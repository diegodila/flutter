import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiap Scaffold',
      home: Scaffold(
        appBar: _appBar(),
        body: _bodyCenter(),
        floatingActionButton: _floatingActionButton(),
        drawer: _drawer(),
        persistentFooterButtons: _persistentFooterButtons(),
        bottomNavigationBar: _bottomNavigationBar(),
        endDrawer: _endDrawer(),
      ),
    );
  }

  Widget _appBar() {
    return AppBar(
      title: Text('Fiap Scaffold'),
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      elevation: 10.0,
      child: Icon(Icons.add),
      onPressed: () {
        print('_floatingActionButton pressed');
      },
    );
  }

  Widget _bodyCenter() {
    return Center(
      child: Text(
        "Fiap",
        style: TextStyle(
          color: Colors.black,
          fontSize: 40.0,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      elevation: 16.0,
      child: Center(
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Flavio Moreni"),
              accountEmail: Text("profflavio.moreni@fiap.com.br"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("FM"),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("FM"),
                )
              ],
            ),
            ListTile(
              title: new Text("Emal"),
              leading: new Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: new Text("Principal"),
              leading: new Icon(Icons.inbox),
            ),
            ListTile(
              title: new Text("Redes Socias"),
              leading: new Icon(Icons.people),
            ),
            ListTile(
              title: new Text("Propoganda"),
              leading: new Icon(Icons.local_offer),
            )
          ],
        ),
      ),
    );
  }

  _persistentFooterButtons() {
    return <Widget>[
      RaisedButton(
        elevation: 10.0,
        onPressed: () {},
        color: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      RaisedButton(
        elevation: 10.0,
        onPressed: () {},
        color: Colors.blueGrey,
        child: Icon(
          Icons.clear,
          color: Colors.white,
        ),
      ),
    ];
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      fixedColor: Colors.teal,
      items: [
        BottomNavigationBarItem(
          title: Text("Home"),
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          title: Text("Search"),
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          title: Text("Add"),
          icon: Icon(Icons.add_box),
        ),
      ],
      onTap: (int index) {},
    );
  }

  Widget _endDrawer() {
    return _drawer();
  }
}
