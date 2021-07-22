import 'package:appzyon/models/house_model.dart';
import 'package:appzyon/repository/houses_database.dart';

class HouseRepository {
  Future<List<HouseModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<HouseModel> houses = List<HouseModel>();

    if (db.created) {
      houses = new List<HouseModel>();
      houses.add(
        new HouseModel(
            id: 1,
            streetAdress: 'Rua venezuela',
            countryAdress: 'Brazil',
            stateAdress: 'São Paulo',
            districtAdress: 'Itaim Bibi',
            homeType: 'Casa',
            bedroom: 3,
            cityAdress: 'São Paulo',
            squareFeet: 120,
            price: 3000.50,
            typeSales: 'Venda',
            condominiumPrice: 1700.00,
            description: 'xxxx',
            img: 'img1.jpeg'),
      );
      houses.add(
        HouseModel(
            id: 2,
            streetAdress: 'Rua João Reitor',
            countryAdress: 'Brazil',
            stateAdress: 'São Paulo',
            districtAdress: 'Pinheiros',
            homeType: 'Apartamento',
            bedroom: 3,
            cityAdress: 'São Paulo',
            typeSales: 'Aluguel',
            squareFeet: 50,
            price: 3000.50,
            condominiumPrice: 2000.50,
            description: 'xxxx',
            img: 'img2.jpeg'),
      );
      houses.add(
        HouseModel(
            id: 3,
            streetAdress: 'Rua Dona Gabriela',
            countryAdress: 'Brazil',
            stateAdress: 'São Paulo',
            districtAdress: 'Santana',
            homeType: 'Apartamento',
            typeSales: 'Venda',
            bedroom: 3,
            cityAdress: 'São Paulo',
            squareFeet: 210,
            price: 3000.50,
            condominiumPrice: 1500.00,
            description: 'xxxx',
            img: 'img3.jpg'),
      );
      houses.add(
        HouseModel(
            id: 4,
            streetAdress: 'Rua Carlota',
            countryAdress: 'Brazil',
            stateAdress: 'Rio de Janeiro',
            districtAdress: 'Aphaville Barra',
            homeType: 'Casa de Condomínio',
            typeSales: 'Aluguel',
            bedroom: 5,
            cityAdress: 'Rio de Janeiro',
            squareFeet: 1300,
            price: 7500.00,
            condominiumPrice: 2000.00,
            description: 'Este é um apartamento de muito legal',
            img: 'img4.png'),
      );
    }

    return new Future.value(houses);
  }
}
