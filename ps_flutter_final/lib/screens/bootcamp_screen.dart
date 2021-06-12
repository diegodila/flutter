import 'package:flutter/material.dart';
import 'package:ps_flutter_final/models/bootcamp_model.dart';
import 'package:ps_flutter_final/repository/bootcamp_repository.dart';

class BootcampScreen extends StatefulWidget {
  @override
  _BootcampScreenState createState() => _BootcampScreenState();
}

class _BootcampScreenState extends State<BootcampScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(65, 105, 2255, 0.9),
        title: Text("Bootcamp 2021"),
      ),
      body: FutureBuilder<List<BootcampModel>>(
        future: BootcampRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  ListView buildListView(List<BootcampModel> bootcamps) {
    return ListView.builder(
      itemCount: bootcamps == null ? 0 : bootcamps.length,
      //itemCount: bootcamps.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardBootcamp(bootcamps[index]);
      },
    );
  }

  Card cardBootcamp(BootcampModel bootcamp) {
    return Card(
      elevation: 25.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 10.0,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.red,
              ],
            )),
        child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
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
            bootcamp.nome,
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
            Navigator.pushNamed(
              context,
              '/bootcamp_details',
              arguments: bootcamp,
            );
          },
        ),
      ),
    );
  }
}
