import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  // Instancia do SQFLite Database
  static Database _database;

  // Instancia da classe Helper “Singleton”
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  // Fábrica da classe Helper “construtor”
  factory DatabaseHelper() {
    return _instance;
  }

  // Construtor nomeado
  DatabaseHelper._internal();

  // Abre conexão com o banco
  Future<Database> get connection async {
    if (_database == null) {
      _database = await _createDatabase();
    }
    return _database;
  }

  Future<Database> _createDatabase() async {
    String databasePath = await getDatabasesPath();
    String dbPath = join(databasePath, 'curso.db');

    var database = await openDatabase(
      dbPath,
      version: 1,
      onCreate: _createTables,
    );

    return database;
  }

  void _createTables(Database database, int version) async {
    await database.execute(
      '''
        CREATE TABLE IF NOT EXISTS CursoModel (
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          nome TEXT,
          nivel TEXT,
          percentualConclusao REAL,
          preco INTEGER,
          conteudo TEXT
        )
        ''',
    );

    await database.execute(
      '''
        CREATE TABLE IF NOT EXISTS TesteModel (
          id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
          nome TEXT
        )
        ''',
    );
  }
}
