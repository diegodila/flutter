import 'package:app07_1/model/games.dart';

class GamesRepository {
  List<Games> findAll() {
    var list = [
      new Games(1, name: 'Tetris', content: 'rpg', percentage: '30', price: 20),
      new Games(2, name: 'Tetris', content: 'rpg', percentage: '30', price: 20),
      new Games(5,
          name: 'Tetris',
          content: 'rpg',
          percentage: '30',
          price: 30,
          level: 'easy'),
      new Games(3,
          name: 'Tetris',
          content: 'rpg',
          percentage: '30',
          price: 20,
          level: 'hard')
    ];

    return list;
  }
}
