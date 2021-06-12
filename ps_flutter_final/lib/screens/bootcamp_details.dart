import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_flutter_final/models/bootcamp_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BootcampDetails extends StatelessWidget {
  launchURL(String url) async {
    if (await canLaunch(url)) {
      print(url);
      await launch(url, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    BootcampModel bootcampModel = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(65, 105, 225, .9),
        title: Text(bootcampModel.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            labelValue('Empresa'),
            fieldValue(bootcampModel.empresa.toString()),
            espaco(),
            labelValue('Nível'),
            fieldValue(bootcampModel.nivel),
            espaco(),
            labelValue('Data'),
            fieldValue(bootcampModel.data.toString()),
            espaco(),
            labelValue('Carga Horária'),
            fieldValue(bootcampModel.carga.toString()),
            espaco(),
            labelValue('Conteúdo'),
            fieldValue(bootcampModel.conteudo),
            espaco(),
            Center(
              child: ElevatedButton(
                child: Text('Tenho interesse!'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(65, 105, 225, .9),
                ),
                onPressed: () {
                  var url = bootcampModel.link;
                  launchURL(url);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox espaco() => SizedBox(
        height: 16,
      );

  Widget labelValue(String _label) {
    return Text(
      '$_label:',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.blue,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
    );
  }

  Widget fieldValue(String _value) {
    return Text(
      _value,
      style: TextStyle(
        color: Color.fromRGBO(0, 0, 0, .9),
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w800,
        fontSize: 20,
      ),
    );
  }
}
