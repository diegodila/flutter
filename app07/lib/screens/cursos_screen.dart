import 'package:app07/models/curso_model.dart';
import 'package:app07/repository/curso_repository.dart';
import 'package:flutter/material.dart';

class CursosScreen extends StatefulWidget {
  @override
  _CursosScreenState createState() => _CursosScreenState();
}

class _CursosScreenState extends State<CursosScreen> {
  // CursoModel cursoModel = new CursoModel(
  //   id: 1,
  //   nome: 'React',
  //   percentualConclusao: 55.0,
  //   preco: 1000,
  //   nivel: 'basico',
  // );
  late List<CursoModel> listCursos;

  @override
  Widget build(BuildContext context) {
    // CursoRepository cursoRepository = new CursoRepository();
    // listCursos = cursoRepository.findAll();
    listCursos = new CursoRepository().findAll();
    //buscamos nossos cursos no Repository

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Cursos"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          CursoModel cursoModel = listCursos[index];
          return listTileCurso(cursoModel);
        },
        itemCount: listCursos.length,
      ),
    );
  }
/*
 <table> 
   <% for (int i = 0; i < listaCursos.leght; i++){
     CursoModel cmodel = listaCursos[i];
     %>
     <tr>
      <td><%= cmodel.nome %></td>
      <td><% cmodel.preco %></td>
      </tr>
    <% } %>
  <table>



  body: ListView(
        children: [
          for (int i = 0; i < listaCursos.leght; i++){
            CursoModel cmodel = listaCursos[i];
            listTileCurso(cmodel);
     }
        ],
      )

*/

  Card listTileCurso(CursoModel curso) {
    return Card(
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 6.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(64, 75, 96, .9),
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
                  color: Colors.white24,
                ),
              ),
            ),
            child: Icon(
              Icons.autorenew,
              color: Colors.white,
            ),
          ),
          title: Text(
            curso.nome,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: LinearProgressIndicator(
                    backgroundColor: Color.fromRGBO(209, 224, 224, 0.2),
                    value: curso.percentualConclusao,
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    curso.nivel,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.white,
            size: 30.0,
          ),
          onTap: () {
            print('Navegar');
          },
        ),
      ),
    );
  }
}
