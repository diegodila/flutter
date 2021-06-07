import 'package:am_flutter_final/repository/database.dart';
import 'package:am_flutter_final/models/municipio_model.dart';

class MunicipioRepository {
  Future<List<MunicipioModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    List<MunicipioModel> municipios = new List<MunicipioModel>();

    if (db.created) {
      municipios = new List<MunicipioModel>();
      municipios.add(
        new MunicipioModel(
          id: 1,
          nome: 'Portal da transparencia São Paulo',
          link: 'http://www.transparencia.sp.gov.br/',
        ),
      );
      municipios.add(
        MunicipioModel(
          id: 2,
          nome: 'Portal da transparencia Guarulhos',
          link: 'http://portaltransparencia.guarulhos.sp.gov.br/',
        ),
      );
      municipios.add(
        MunicipioModel(
          id: 3,
          nome: 'Portal da transparencia Itu',
          link: 'https://itu.sp.gov.br/tag/transparencia/',
        ),
      );
      municipios.add(
        MunicipioModel(
          id: 4,
          nome: 'Portal da transparencia Piracicaba',
          link: 'https://transparencia.piracicaba.sp.gov.br/',
        ),
      );
      municipios.add(
        MunicipioModel(
          id: 5,
          nome: 'Portal da transparencia Indaiatuba',
          link: 'https://www.indaiatuba.sp.gov.br/transparencia/',
        ),
      );
      municipios.add(
        MunicipioModel(
          id: 5,
          nome: 'Portal da transparencia São José dos Campos',
          link:
              'https://www.sjc.sp.gov.br/servicos/governanca/portal-da-transparencia/',
        ),
      );
    }

    return new Future.value(municipios);
  }
}
