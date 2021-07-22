import 'package:appzyon/models/house_model.dart';
import 'package:appzyon/screens/houses_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HousesDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HouseModel houseModel = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Image.asset(HousesScreenState().imagesAssets(houseModel.img)),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text(houseModel.price.toString()),
              subtitle: Text(
                '${houseModel.streetAdress}, ' +
                    '${houseModel.districtAdress}, ' +
                    '${houseModel.cityAdress}, ' +
                    '${houseModel.countryAdress}',
                style: TextStyle(color: Colors.black.withOpacity(0.7)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 1,
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Stack(
                    children: buildSizedBox(houseModel),
                  ),
                ),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  textColor: Colors.redAccent,
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('Ligar'),
                ),
                FlatButton(
                  textColor: Colors.redAccent,
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Text('Contatar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildSizedBox(HouseModel houseModel) {
    return [
      SizedBox(
        child: Align(
          alignment: Alignment.topLeft,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Column(
                  children: [
                    Text(
                      '${houseModel.typeSales}',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      'Valor do condominio',
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Text(
                    '${houseModel.price.toString()}',
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    '${houseModel.condominiumPrice.toString()}',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
