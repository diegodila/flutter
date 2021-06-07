import 'package:am_flutter_final/models/municipio_model.dart';
import 'package:am_flutter_final/screen/municipios_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MunicipiosDetalhes extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    MunicipioModel municipioModel = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: MunicipiosScreenState().buildAppBar(),
      body: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            // Image.asset(
            //     MunicipiosScreenState().imagesAssets(municipioModel.img)),
            ListTile(
              title: Text(municipioModel.nome.toString()),
              subtitle: Text(
                '${municipioModel.link}',
                style: TextStyle(color: Colors.black.withOpacity(0.7)),
              ),
              onTap: () {
                var url = municipioModel.link;
                print(url);
                launchURL(url);
              },
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
                    children: buildSizedBox(municipioModel),
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
                  child: const Text('Email'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildSizedBox(MunicipioModel municipioModel) {
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
                      '${municipioModel.link}',
                      style: TextStyle(
                        fontSize: 10,
                      ),
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
                    '${municipioModel.nome.toString()}',
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
