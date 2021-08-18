import 'package:app07_1/model/games.dart';
import 'package:app07_1/repository/games_repository.dart';
import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  late List<Games> listGames;

  @override
  Widget build(BuildContext context) {
    listGames = new GamesRepository().findAll();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: listGames.length,
        itemBuilder: (context, index) {
          Games games = listGames[index];
          return buildCard(games);
        },
      ),
    );
  }

  Card buildCard(Games games) {
    return Card(
      child: Container(
        child: ListTile(
          leading: Text(games.id.toString()),
          trailing: Text(games.price.toString()),
          title: Text(games.level.toString()),
          subtitle: Text(games.name.toString()),
        ),
      ),
    );
  }
}
