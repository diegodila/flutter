import 'package:am_flutter_final/models/municipio_model.dart';
import 'package:am_flutter_final/service/service_config.dart';
import 'package:dio/dio.dart';

class CidadeService {
  static final String _endpoint =
      "https://616e1e33a83a850017caa7fd.mockapi.io/tcesp/v1/";

  static final String _resource = 'portais';

  final ServiceConfig service = new ServiceConfig(_endpoint);

  Future<List<MunicipioModel>> findAll() async {
    await Future.delayed(Duration(seconds: 3));

    List<MunicipioModel> lista = new List<MunicipioModel>();

    try {
      Response response = await service.create().get(_resource);
      if (response.statusCode == 200) {
        response.data.forEach(
          (value) {
            print(value);
            lista.add(
              MunicipioModel.fromMap(value),
            );
          },
        );
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }

    return lista;
  }

  Future<int> create(MunicipioModel municipioModel) async {
    try {
      municipioModel.id = 0;
      Response response = await service.create().post(
            _resource,
            data: municipioModel.toMap(),
          );

      if (response.statusCode == 201) {
        var retorno = (response.data["id"] is String)
            ? int.parse(response.data["id"])
            : response.data["id"];
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<MunicipioModel> getById(int id) async {
    try {
      String endpoint = _resource + "/" + id.toString();
      Response response = await service.create().get(endpoint);

      if (response.statusCode == 200) {
        var retorno = MunicipioModel.fromMap(response.data);
        return retorno;
      }
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<int> update(MunicipioModel municipioModel) async {
    try {
      String endpoint = _resource + "/" + municipioModel.id.toString();

      Response response = await service.create().put(
            endpoint,
            data: municipioModel.toMap(),
          );

      var retorno = (response.data["id"] is String)
          ? int.parse(response.data["id"])
          : response.data["id"];
      return retorno;
    } catch (error) {
      print("Service Error: $error ");
      throw error;
    }
  }

  Future<void> delete(MunicipioModel municipioModel) async {
    try {
      String endpoint = _resource + "/" + municipioModel.id.toString();

      Response response = await service.create().delete(
            endpoint,
          );

      if (response.statusCode != 200) {
        throw Exception("Não foi possível excluir o recurso!");
      }
    } catch (error) {
      throw error;
    }
  }
}
