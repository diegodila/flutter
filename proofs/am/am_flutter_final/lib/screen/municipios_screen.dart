import 'package:am_flutter_final/screen/widgets/municipios_loading.dart';
import 'package:am_flutter_final/service/cidade_service.dart';
import 'package:flutter/material.dart';
import 'package:am_flutter_final/models/municipio_model.dart';
import 'package:am_flutter_final/repository/municipio_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class MunicipiosScreen extends StatefulWidget {
  @override
  MunicipiosScreenState createState() => MunicipiosScreenState();
}

class MunicipiosScreenState extends State<MunicipiosScreen> {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: FutureBuilder<List<MunicipioModel>>(
        future: CidadeService().findAll(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            String erroMessage = snapshot.error.toString();
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Erro ao carregar a lista de cursos. \n Detalhes: $erroMessage'),
              ),
            );
          } else {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data.length > 0) {
                return buildListView(snapshot.data);
              } else {
                return Center(
                  child: Text("Nenhum portal cadastrado!"),
                );
              }
            } else {
              // Carregando as informações
              return MunicipioListViewLoading();
            }
          }
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text("AM"),
    );
  }

  ListView buildListView(List<MunicipioModel> municipios) {
    return ListView.builder(
      itemCount: municipios == null ? 0 : municipios.length,
      //itemCount: municipios.length,
      itemBuilder: (BuildContext ctx, index) {
        return cardMunicipio(municipios[index]);
      },
    );
  }

  Card cardMunicipio(MunicipioModel municipio) {
    return Card(
      elevation: 25.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.yellow,
                Colors.black,
              ],
            )),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Icon(
              Icons.bookmark_outline_rounded,
              color: Colors.white,
            ),
          ),
          title: Text(
            municipio.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () async {
            var url = municipio.link;
            print(url);
            launchURL(url);

            // print(house.nome);
            //Navigator.push(...,arguments:house);
          },
        ),
      ),
    );
  }
}
