import 'package:appzyon/models/house_model.dart';
import 'package:appzyon/repository/house_repository.dart';
import 'package:flutter/material.dart';

class HousesScreen extends StatefulWidget {
  @override
  HousesScreenState createState() => HousesScreenState();
}

class HousesScreenState extends State<HousesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.1,
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        items: navigationBarItens(),
      ),
      appBar: buildAppBar(),
      body: FutureBuilder<List<HouseModel>>(
        future: HouseRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: RefreshProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<HouseModel> houses) {
    return ListView.builder(
      itemCount: houses == null ? 0 : houses.length,
      //itemCount: houses.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardHouse(houses[index]);
      },
    );
  }

  Card cardHouse(HouseModel house) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Column(
        children: [
          Image.asset(
            imagesAssets(house.img),
            fit: BoxFit.cover,
          ),
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white70,
            ),
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                    border: new Border(
                      right: new BorderSide(
                        width: 1.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Text('Price: ${house.price}'),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text('Condominio: ${house.condominiumPrice}'),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          'Bedrooms: ${house.bedroom.toString()}',
                        ),
                      )
                    ],
                  )),
              title: Text(
                house.streetAdress,
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      child: Text(
                        '${house.cityAdress},${house.districtAdress}, ${house.countryAdress}',
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.favorite_outline_sharp,
                color: Colors.redAccent,
                size: 30.0,
              ),
              onTap: () async {
                var messageReturn = await Navigator.pushNamed(
                  context,
                  '/house_description',
                  arguments: house,
                );
                print(messageReturn);
                // print(house.nome);
                //Navigator.push(...,arguments:house);
              },
            ),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: Text(
        'ZyonImoveis',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
    );
  }

  List<BottomNavigationBarItem> navigationBarItens() {
    return [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text('home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.search_rounded,
          color: Colors.white70,
        ),
        title: Text('Search'),
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite_rounded,
          color: Colors.white70,
        ),
        title: Text('Favorites'),
      ),
    ];
  }

  String imagesAssets(String assets) => 'assets/images/${assets}';
}
